# Fakeserver

A docker container to emulate a remote server for testing. The primary purpose is to emulate and test running automated scripts and utilities over ssh in remote servers.

https://hub.docker.com/r/kabirbaidhya/fakeserver/

## Usage

Pull the image.

```bash
➜ docker pull kabirbaidhya/fakeserver
```

Set authorized keys for the server.

```bash
➜ cat ~/.ssh/id_rsa.pub > /path/to/authorized_keys
```

Run the fakeserver.

```bash
➜ docker run -d -p 2222:22 -v "/path/to/authorized_keys:/etc/authorized_keys/tester" -e SSH_USERS="tester:1001:1001" --name=fakeserver kabirbaidhya/fakeserver
```

You can now use the fakeserver from any ssh client. For instance:

```bash
# SSH to the server
➜ ssh tester@localhost -p 2222

# Run a command in the server
➜ ssh tester@localhost -p 2222 "echo 'Hello World'"
```
