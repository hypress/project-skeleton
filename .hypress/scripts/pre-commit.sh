#!/usr/bin/env bash
if (command -v vagrant)
  then
    if !(vagrant validate)
      then
        echo "Vagrantfile validation failed"
        exit 1;
    fi
fi

if (command -v ansible-playbook)
  then
    if !(ansible-playbook ./.hypress/ansible/hypress.yml --check)
      then
        echo "Ansible playbook validation failed"
        exit;
    fi
fi

exit 0;
