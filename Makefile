all: packer_vmware-iso_vmware.box

packages/lucid64.dev.tgz:
	wget http://cfstacks.s3.amazonaws.com/lucid64.dev.tgz -O packages/lucid64.dev.tgz

packages/go1.2.linux-amd64.tar.gz:
	wget https://go.googlecode.com/files/go1.2.linux-amd64.tar.gz -O packages/go1.2.linux-amd64.tar.gz

packer_vmware-iso_vmware.box: packages/lucid64.dev.tgz packages/go1.2.linux-amd64.tar.gz
	packer build template.json
