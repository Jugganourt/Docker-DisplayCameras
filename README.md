# DisplayCameras Docker Container
This repo contains the dockerfile which I've made to containerize the [DisplayCameras](https://github.com/Anonymousdog/displaycameras) (repo written by Anonymousdog).
It uses a modifed version of the repo where you can add a "skip" argument to remove any user interactions (reuqired to build the docker image).


## Docker Image
If you are just after the Docker container you can find the working image [here](https://hub.docker.com/repository/docker/jugganourt/displaycameras/general) which contains the insturctions on how to run it.

## DisplayCameras_DockerHost.sh
This file is to be used on the host device in the location you want to store the files. 
It will ask two questions 
1. What is the name of the Camera?
2. What is the steam url? 

The script will auto populate the values provided into the corretc files. This is currenly only designed to create files for a single camera that would be ran on a 1080p monitor. 
However they can of course be edited once the script has been ran. 
For more information on customisation (adding more cameras to a screen) please lookup the origanl oweners repo (liked above) as it provedes instructions on how to customise.