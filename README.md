## Ansible playbooks for Wiren Board

1. Reset the controller
2. Connect to `WirenBoard-XXXXXXXX` Wi-Fi access point:
```sh
networksetup -setairportnetwork en0 WirenBoard-XXXXXXXX
```
3. Remove host from SSH's known_hosts if any:
```sh
ssh-keygen -R 192.168.42.1
```
4. Edit `group_vars/all` with proper values
5. Run ansible playbook (it might take more than 30 min):
```sh
nix shell nixpkgs#{ansible,sshpass}
ansible-playbook -i hosts site.yml
```
