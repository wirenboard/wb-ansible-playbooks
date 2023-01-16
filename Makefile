all:
	ssh-keygen -R 192.168.42.1
	ansible-playbook -i hosts site.yml

prepare:
	ansible-galaxy install artis3n.tailscale

lint:
	ansible-lint
