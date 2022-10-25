# gotty-web-ssh

In This repository, the connection to a remote server with **SSH** is added to the Gotty Project. I this previous repository https://github.com/stevelaclasse/gotty-multi-users-Docker, we already have the Gotty project supporting multiple users authentication. 

The idea here is to allow users to connect to a SSH Server with the basic web authentication already present in Gotty. The project is to be deployed in a Kubernetes cluster using Helm, but i also be adapted to any containerized environment as it uses a docker image.

The private key file hast to be copied in the helm folder and the public key muss already be present in server machine. All the users users added in the credential file will use the same username for the ssh connection. So the only authentication method to care here is the basic web authentication, with usernames and passwords.
