#!/bin/bash

KUBEVIRT_TEMPLATE_DIR="${1:-$(dirname "${BASH_SOURCE}")}"

echo "Download release templates from KubeVirt"
vm_template_url="https://raw.githubusercontent.com/kubevirt/kubevirt"
manifest_url="https://github.com/kubevirt/kubevirt/releases/download"


if [ -z "${version}" ]; then
   version=$(git ls-remote --tags https://github.com/kubevirt/kubevirt |  sed 's/.*refs\/tags\///g' | grep -v '\^{}')
   major=`echo $version | cut -d. -f2`
fi

if [ "$major" -lt "7" ] ; then 
  vm_samples_dir="cluster"
else
  vm_samples_dir="cluster/examples"
fi

for item in ${version}; do
    echo ${item}
    echo "Downloading template for ${item}"
    if [ ! -d "${item}" ]; then
    	mkdir "${KUBEVIRT_TEMPLATE_DIR}/${item}"
    fi
    curl -f -o "${KUBEVIRT_TEMPLATE_DIR}/${item}/vm-template-fedora.yaml" "${vm_template_url}/${item}/${vm_samples_dir}/vm-template-fedora.yaml"
    curl -f -o "${KUBEVIRT_TEMPLATE_DIR}/${item}/vm-template-rhel7.yaml" "${vm_template_url}/${item}/${vm_samples_dir}/vm-template-rhel7.yaml"
    curl -f -o "${KUBEVIRT_TEMPLATE_DIR}/${item}/vm-template-windows2012r2.yaml" "${vm_template_url}/${item}/${vm_samples_dir}/vm-template-windows2012r2.yaml"
    curl -f -o "${KUBEVIRT_TEMPLATE_DIR}/${item}/demo-content.yaml" "${manifest_url}/${item}/demo-content.yaml"
    wget -O "${KUBEVIRT_TEMPLATE_DIR}/${item}/kubevirt.yaml.j2" "${manifest_url}/${item}/kubevirt.yaml.j2"
    wget -O "${KUBEVIRT_TEMPLATE_DIR}/${item}/kubevirt.yaml" "${manifest_url}/${item}/kubevirt.yaml"
    echo "Download for ${item} complete"
done
