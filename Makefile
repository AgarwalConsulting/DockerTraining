vagrant-up:
	vagrant up

vagrant-tssh:
	vagrant ssh -c "cd /vagrant && tmux a -t basevm || tmux new -s basevm"

vagrant-down:
	vagrant destroy

vagrant-halt:
	vagrant halt

vagrant-restart:
	vagrant halt
	vagrant up

vagrant-package-and-push:
	rm -f package.box
	vagrant package
	curl --upload-file package.box https://transfer.sh/gcp-cli.box >> project-resources/link.txt

vagrant-box-refresh:
	vagrant box remove docker.box
	vagrant box add --name docker.box package.box
