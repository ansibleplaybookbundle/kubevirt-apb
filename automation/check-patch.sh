#!/bin/bash -xe

source "${0%/*}/common.sh"

main() {
    export KUBEVIRT_PROVIDER=os-3.10.0
    timeout \
        --foreground \
        --kill-after 5m \
        30m \
        "${0%/*}/test.sh"
}

[[ "${BASH_SOURCE[0]}" == "$0" ]] && main "$@"
