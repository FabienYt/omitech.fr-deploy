### Tasks

configure:
	docker run -it -e ANSIBLE_PLAYBOOK="configure" -v ${CURDIR}/ansible:/ansible:rw -v ${CURDIR}/ssh_keys:/data/ssh_keys:ro ansible_omitech

ping:
	docker run -it -e ANSIBLE_PLAYBOOK="ping" -v ${CURDIR}/ansible:/ansible:rw -v ${CURDIR}/ssh_keys:/data/ssh_keys:ro ansible_omitech

update:
	docker run -it -e ANSIBLE_PLAYBOOK="update" -v ${CURDIR}/ansible:/ansible:rw -v ${CURDIR}/ssh_keys:/data/ssh_keys:ro ansible_omitech

### Setup
build:
	docker build -q -t ansible_omitech -f docker/Dockerfile .

lint:
	docker run -it -e ANSIBLE_PLAYBOOK="lint" -v ${CURDIR}/ansible:/ansible:rw ansible_omitech

vault:
	docker run -it -e ANSIBLE_PLAYBOOK="vault" -v ${CURDIR}/ansible:/ansible:rw ansible_omitech
