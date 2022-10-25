#!/bin/bash

ssh -o StrictHostKeyChecking=no  $GOTTY_USER@$GOTTY_HOST_IP -i ~/.ssh/id_rsa
