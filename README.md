# Docker DisplayCameras
This repo contains the dockerfile which I've made to containerize the [DisplayCameras](https://github.com/Anonymousdog/displaycameras) (repo written by Anonymousdog).
It uses a modifed version of the repo where you can add a "skip" argument to remove any user interactions (reuqired to build the docker image).

If you are just after the Docker container you can find the working image [here](https://hub.docker.com/repository/docker/jugganourt/displaycameras/general) which contains the insturctions on how to run it.

## Files

### Dockerfile
The file used to create the docker image. One of the calls uses a modifed repo of [Anonymousdog's 
displaycameras](https://github.com/Anonymousdog/displaycameras); the modifications made can be found at the bottom of the file or seen on my [Forked Copy](https://github.com/Jugganourt/displaycameras)

### DisplayCameras_DockerHost.sh
This file can be used on the Docker Host device to create the required config files. It will ask two questions 
1. What is the name of the Camera?
2. What is the steam url? 

The script will auto populate the two files with the provided values.

The script is currenly only designed to create the config files for a single camera stream setup that would be ran on a 1080p monitor.

However the config files can of course be edited once the script has been ran.

For more information on customisation of ther config files please look at the README.md of either the origanl or modifed repo (both linked above) as it provides instructions there.

### docker_intall.sh
This file contains the required steps to get docker installed on a Raspbian Stretch build

## Speical thanks
The orignal unmodifed displaycameras repo was created by Anonymousdog (https://github.com/Anonymousdog/displaycameras).

### My Modifications
The modifications I have made allows the user to provide a `skip` flag to the `install.sh`, for example:
```bash 
./install.sh skip
``` 
This will run the install script with no user input required.
