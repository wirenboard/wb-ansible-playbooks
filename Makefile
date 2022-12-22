all:
	ssh-keygen -R 192.168.42.1
	ansible-playbook -i hosts site.yml

lint:
	ansible-lint
