# cloudinv-agent-debian

## Build the image
`docker build -t cloudinv-agent-debian ~/path/to/Dockerfile --build-arg DOWNLOAD_URL=https://path/to/.deb --build-arg SITE_KEY=actualKey
`

Example URL for the stable public repo/build:

`DOWNLOAD_URL=https://spiceworks.jfrog.io/spiceworks/deb-public/pool/spiceworks-agentshell-cloud-inventory_0.3.16_all.deb`

## List images 
`docker images`

## Run the new image in a container
`docker run -dit cloudinv-agent-debian`

The container is launched in the background with interactive mode enabled.

## Lookup the name of the container (its dynamic)
`docker ps -a`
 
## Read agent logs
`docker logs <dynamic container name>`
