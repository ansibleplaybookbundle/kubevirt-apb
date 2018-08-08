#!/bin/bash -xe

kcmd() {
    local kubevirt="${KUBEVIRT_REPO_PATH:?Please export KUBEVIRT_REPO_PATH variable}"

    ( cd "$kubevirt"; "$@" )
}

cluster_up() {
    kcmd make cluster-up
}

cluster_down() {
    kcmd make cluster-down
}

cluster_sync() {
    local registry_port
    registry_port="$(get_public_port 5000)"
    local num_of_nodes=${KUBEVIRT_NUM_NODES:-1}
    local image_name="registry:5000/kubevirt-apb/kubevirt"
    local node

    make apb_build DOCKERHOST="localhost:${registry_port}"
    make docker_push DOCKERHOST="localhost:${registry_port}"

    for ((i=1; i<=num_of_nodes; i++)); do
        node="node$(printf "%02d" "$i")"
        kcmd cluster/cli.sh ssh "$node" sudo docker rmi "$image_name" || :
        kcmd cluster/cli.sh ssh "$node" sudo docker pull "$image_name"
    done
}

get_public_port() {
    local provider="${KUBEVIRT_PROVIDER:?Please export KUBEVIRT_PROVIDER variable}"
    local private_port="${1:?}"
    local socket

    socket="$(docker port "${provider}-dnsmasq" "$private_port")"

    echo "${socket##*:}"
}

_kubectl() {
    kcmd cluster/kubectl.sh "$@"
}

run_apb() {
    local tempfile && tempfile="$(mktemp)"

    sed \
        -e 's/docker.io/registry:5000/g' \
        -e 's/ansibleplaybookbundle/kubevirt-apb/g' \
        templates/kubevirt-apb.yml \
        > "$tempfile"

    _kubectl create -f "$tempfile"
}

get_kubevirt() {
    local kubevirt_tag="v0.7.0-alpha.5"
    local kubevirt_repo_url="https://github.com/kubevirt/kubevirt.git"
    readonly KUBEVIRT_REPO_PATH="$(mktemp -dt kubevirt.XXX)"

    git clone "$kubevirt_repo_url" "$KUBEVIRT_REPO_PATH"
    kcmd git checkout "$kubevirt_tag"
}

main() {
    [[ "$KUBEVIRT_REPO_PATH" ]] || get_kubevirt
    cluster_up
    trap "cluster_down" EXIT
    cluster_sync
    run_apb
}

[[ "${BASH_SOURCE[0]}" == "$0" ]] && main "$@"
