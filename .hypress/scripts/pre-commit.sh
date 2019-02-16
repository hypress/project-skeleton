#!/usr/bin/env bash
if (command -v vagrant)
  then
    if !(vagrant validate)
      then
        echo "Vagrantfile validation failed"
        VBoxManage --version
        exit 1;
    fi
fi

if (command -v ansible-playbook)
  then
    if !(ansible-playbook ./.hypress/ansible/hypress.yml --syntax-check)
      then
        echo "Ansible playbook validation failed"
        exit 1;
    fi
fi

exit 0;