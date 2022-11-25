## Ansible playbooks for Wiren Board

1. Turn on the controller
2. Connect to `WirenBoard-XXXXXXXX` Wi-Fi access point:
```sh
networksetup -setairportnetwork en0 WirenBoard-XXXXXXXX
```
3. Edit `group_vars/all`
4. Run ansible playbook (it might take more than 30 min):
```sh
nix shell nixpkgs#{ansible,sshpass}
ansible-playbook -i hosts site.yml
```
For more details, see [Wiren Board 7](https://wirenboard.com/wiki/Wiren_Board_7#%D0%A7%D1%82%D0%BE_%D0%B4%D0%B0%D0%BB%D1%8C%D1%88%D0%B5).
