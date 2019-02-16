#!/usr/bin/env bash
if (command -v vagrant)
  then
    if !(vagrant validate)
      then
        echo "Vagrantfile validation failed"
        exit 1;
    fi
fi
exit 0;
