---
- name: Install UFW package
  apt:
    name: ufw
    state: present

- name: Enable UFW
  community.general.ufw:
    state: enabled
    policy: allow
  become: true

- name: Allow SSH access
  community.general.ufw:
    rule: allow
    port: ssh
    proto: tcp
  become: true

- name: Allow HTTP access
  community.general.ufw:
    rule: allow
    port: '80'
    proto: tcp
  become: true

- name: Allow HTTPS access
  community.general.ufw:
    rule: allow
    port: '443'
    proto: tcp
  become: true

- name: Allow SQL ports access
  community.general.ufw:
    rule: allow
    port: '3306'
    proto: tcp
  become: true
