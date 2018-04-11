#!/bin/bash

KUBEVIRT_TEMPLATE_DIR="$(dirname "${BASH_SOURCE}")"

echo "Download release templates from KubeVirt"
version=$1
vm_template_url="https://raw.githubusercontent.com/kubevirt/kubevirt"
manifest_url="https://github.com/kubevirt/kubevirt/releases/download"


if [ -z "${version}" ]; then
   declare -a version=("0.1.0" "0.2.0" "0.3.0" "0.4.0" "0.4.1-alpha.1" "0.4.1-alpha.2")
fi

for item in "${version[@]}"; do
    echo "Downloading template for ${item}"
    if [ ! -d "${item}" ]; then
	mkdir "${KUBEVIRT_TEMPLATE_DIR}/${item}"
    fi
    curl -f -o "${KUBEVIRT_TEMPLATE_DIR}/${item}/vm-template-fedora.yaml" "${vm_template_url}/v${item}/cluster/vm-template-fedora.yaml"
    curl -f -o "${KUBEVIRT_TEMPLATE_DIR}/${item}/vm-template-rhel7.yaml" "${vm_template_url}/v${item}/cluster/vm-template-rhel7.yaml"
    curl -f -o "${KUBEVIRT_TEMPLATE_DIR}/${item}/vm-template-windows2012r2.yaml" "${vm_template_url}/v${item}/cluster/vm-template-windows2012r2.yaml"
    wget -O "${KUBEVIRT_TEMPLATE_DIR}/${item}/kubevirt.yaml" "${manifest_url}/v${item}/kubevirt.yaml"
done
