# BeamMP-ServerDocker
Unofficial Docker image for containering BeamMP Servers

## Requirements
- [docker](https://www.docker.com), [docker-compose](https://docs.docker.com/compose)
- You may also like [portainer](https://www.portainer.io) for a web based ui


## Steps
1. `git clone https://github.com/OfficialLambdax/BeamMP-ServerDocker`
2. Put a BeamMP-Server binary into /beammp/ as BeamMP-Server
3. Open `compose.yaml` in a text editor
4. Define the settings to your liking
5. run `docker compose up`, perhaps with `sudo`
- You may also have to install extra dependencies into the container if any of your server scripts make use of system tools like eg curl or wget. Open `Dockerfile` in a text editor


## Additional Functionality
You can bind folders and files from the host system into the containers.
1. Bind a folder to `/Client/` or `/Server/`
2. Bind a file to `/beammp/Resources/Client/my_favorite_map.zip`
- Everything bound to either `/Client/` or `/Server/` is automatically symlinked into either `/beammp/Resources/Client/` or `/beammp/Resources/Server/`
- The `compose.yaml` containes demonstrative examples for this.


## Additional Credits
- @lionkor for the `entrypoint.sh`


## Todo
- Demonstrative draw.io picture that shows how this works
- Describe common errors, eg. when the container doesnt contain the right lua version