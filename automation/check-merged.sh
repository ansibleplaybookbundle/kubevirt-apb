#!/bin/bash -xe

source "${0%/*}/common.sh"

main() {
    common.build_and_tag_apb
}

[[ "${BASH_SOURCE[0]}" == "$0" ]] && main "$@"
