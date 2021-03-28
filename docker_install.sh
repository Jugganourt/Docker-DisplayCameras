 #!/bin/bash
 
 curl -fsSL https://get.docker.com -o get-docker.sh
 sudo ./get-docker.sh

read -p "What is yout current user? "
username="$REPLY"

 sudo usermod -aG docker $username