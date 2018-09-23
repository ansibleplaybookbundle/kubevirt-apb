#!/bin/bash

KUBEVIRT_TEMPLATE_DIR="${1:-$(dirname "${BASH_SOURCE}")}"
CDI_TEMPLATE_DIR="${KUBEVIRT_TEMPLATE_DIR}/cdi"

echo "Download release templates from KubeVirt"
vm_template_url="https://raw.githubusercontent.com/kubevirt/kubevirt"
manifest_url="https://github.com/kubevirt/kubevirt/releases/download"
cdi_manifest_url="https://github.com/kubevirt/containerized-data-importer/releases/download"

if [ -z "${version}" ]; then
   version=$(git ls-remote --tags https://github.com/kubevirt/kubevirt |  sed 's/.*refs\/tags\///g' | grep -v '\^{}')
fi

for item in ${version}; do
    echo ${item}
    echo "Downloading template for ${item}"

    major=`echo ${item} | cut -d. -f2`
    minor=`echo ${item} | cut -d. -f3`
    if [ "$major" -lt "7" ] && [ "$minor" -gt 0 ]; then
	vm_samples_dir="cluster/examples"
    elif [ "$major" -lt "7" ] && [ "$minor" -gt 0 ]; then
	vm_samples_dir="cluster"
    else
	vm_samples_dir="cluster/examples"
    fi

    if [ ! -d "${item}" ]; then
    	mkdir "${KUBEVIRT_TEMPLATE_DIR}/${item}"
    fi
    curl -f -o "${KUBEVIRT_TEMPLATE_DIR}/${item}/vm-template-fedora.yaml" "${vm_template_url}/${item}/${vm_samples_dir}/vm-template-fedora.yaml"
    curl -f -o "${KUBEVIRT_TEMPLATE_DIR}/${item}/vm-template-rhel7.yaml" "${vm_template_url}/${item}/${vm_samples_dir}/vm-template-rhel7.yaml"
    curl -f -o "${KUBEVIRT_TEMPLATE_DIR}/${item}/vm-template-windows2012r2.yaml" "${vm_template_url}/${item}/${vm_samples_dir}/vm-template-windows2012r2.yaml"
    curl -L -f -o "${KUBEVIRT_TEMPLATE_DIR}/${item}/demo-content.yaml" "${manifest_url}/${item}/demo-content.yaml"
    wget -O "${KUBEVIRT_TEMPLATE_DIR}/${item}/kubevirt.yaml.j2" "${manifest_url}/${item}/kubevirt.yaml.j2"
    wget -O "${KUBEVIRT_TEMPLATE_DIR}/${item}/kubevirt.yaml" "${manifest_url}/${item}/kubevirt.yaml"
    echo "Download for ${item} complete"
done

if [ -z "${cdi_version}" ]; then
   cdi_version=$(git ls-remote --tags https://github.com/kubevirt/containerized-data-importer |  sed 's/.*refs\/tags\///g' | grep -v '\^{}')
fi

for item in ${cdi_version}; do
    echo ${item}
    echo "Downloading template for ${item}"
    if [ ! -d "${item}" ]; then
    	mkdir "${CDI_TEMPLATE_DIR}/${item}"
    fi
    major=`echo ${item} | cut -dv -f2 | cut -d. -f1`
    minor=`echo ${item} | cut -dv -f2 | cut -d. -f2`
    patch=`echo ${item} | cut -dv -f2 | cut -d. -f3`
    if [ "$major" -ge "1" ] && [ "$minor" -ge 2 ]; then
        # We support j2 template since v1.2.0
        wget -O "${CDI_TEMPLATE_DIR}/${item}/cdi-controller.yaml.j2" "${cdi_manifest_url}/${item}/cdi-controller.yaml.j2"
    fi
    wget -O "${CDI_TEMPLATE_DIR}/${item}/cdi-controller.yaml" "${cdi_manifest_url}/${item}/cdi-controller.yaml"
    echo "Download for ${item} complete"
done