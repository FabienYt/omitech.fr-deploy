FROM python:3.10.4-slim-bullseye

ENV DEBIAN_FRONTEND=noninteractive

ENV ANSIBLE_PLAYBOOK=""

WORKDIR /ansible

RUN set -x \
    && apt-get update \
    && apt-get install --no-install-recommends --no-install-suggests -y \
       sudo systemd systemd-sysv openssh-client \
       build-essential wget libffi-dev libssl-dev procps pwgen sshpass \
       python3-pip python3-dev python3-setuptools python3-wheel \
    && pip3 install --no-cache-dir --upgrade pip \
    && pip3 install --no-cache-dir ansible ansible-lint yamllint \
    && apt-get remove --purge --auto-remove -y \
    && rm -rf /var/lib/apt/lists/*

VOLUME /ansible /data

COPY ./docker/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
