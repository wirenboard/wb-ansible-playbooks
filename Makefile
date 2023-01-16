FIT_IMAGE = https://fw-releases.wirenboard.com/fit_image/testing/7x/latest.fit
HOST = 192.168.42.1

all:
	ssh-keygen -R $(HOST)
	ansible-playbook -i $(HOST), site.yml

prepare:
	ansible-galaxy install artis3n.tailscale
	curl -O $(FIT_IMAGE)

lint:
	ansible-lint

clean:
	rm *.fit
