# Containers

## ansible-playbook

```powershell
docker run --rm `
    -v $PSScriptRoot/ansible:/ansible/playbooks `
    -v $env:HOME/.ssh/id_rsa:/root/.ssh/id_rsa `
    -v $env:HOME/.ssh/id_rsa.pub:/root/.ssh/id_rsa.pub `
    kitforbes/ansible-playbook:latest `
    playbook.yml -i inventory
```
