#!/bin/sh
docker run -d -p 2222:22 -v "$(pwd)/.authorized_keys:/etc/authorized_keys/app" -v "$(pwd)/.host_keys:/etc/ssh/keys" -e SSH_USERS="app:1001:1001" --name fakeserver kabirbaidhya/fakeserver

