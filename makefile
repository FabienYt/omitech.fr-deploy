### Tasks

configure:
	docker run -it -e ANSIBLE_PLAYBOOK="configure" -v ${CURDIR}/ansible:/ansible:rw -v ${CURDIR}/ssh_keys:/data/ssh_keys:ro ansible

ping:
	docker run -it -e ANSIBLE_PLAYBOOK="ping" -v ${CURDIR}/ansible:/ansible:rw -v ${CURDIR}/ssh_keys:/data/ssh_keys:ro ansible

update:
	docker run -it -e ANSIBLE_PLAYBOOK="update" -v ${CURDIR}/ansible:/ansible:rw -v ${CURDIR}/ssh_keys:/data/ssh_keys:ro ansible

### Setup
build:
	docker build -q -t ansible -f docker/Dockerfile .

lint:
	docker run -it -e ANSIBLE_PLAYBOOK="lint" -v ${CURDIR}/ansible:/ansible:rw ansible

vault:
	docker run -it -e ANSIBLE_PLAYBOOK="vault" -v ${CURDIR}/ansible:/ansible:rw ansible
