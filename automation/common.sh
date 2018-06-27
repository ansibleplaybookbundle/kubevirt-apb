#!/bin/bash

common.build_and_tag_apb() {
    # STDCI will publish containers which are tagged with "exported-artifacts"
    local version && version="$(common.get_version)"

    make \
        apb_build \
        TAG=exported-artifacts \
        ARGS="--label git-sha=$version"
}

common.get_version() {
    git describe --tags --match "v*"
}
