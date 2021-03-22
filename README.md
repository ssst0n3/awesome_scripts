# awesome scripts

## docker
* container_netstat.sh: run netstat -anp in container without install any tools
  * usage: `./container_netstat.sh <CONTAINER ID>`
* copy_file_from_image.sh
  * usage: `./copy_file_from_image.sh <Image Name> <Image File Path> <Host Saved Path>`
* compose files: https://docs.docker.com/compose/extends/
  * docker-compose.yml: base file
  * docker-compose.override.yml: dev configuration
    * usage: `docker-compose up -d`
  * docker-compose.prod.yml: for production
    * usage: `docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d`
  * docker-compose.admin.yml: run a container for administrative tasks
    * usage: `docker-compose -f docker-compose.yml -f docker-compose.admin.yml up -d`
* dockerignore: exclude files and directories by adding a .dockerignore file to the context directory
  * usage: `cp dockerignore <PROJECT_DIR>/.dockerignore`
* Dockerfile_builder_golang*: build golang project in docker
* logout_swr_south.sh: logout from swr

## git
* gitignore: gitignore file template
* git_init.sh: clean all commits and git history, re commit current status to repository

## golang
* test.sh: golang test script, do not use testcache, single thread

## linux
* clean_memory_cache.sh
  * usage: `sudo clean_memory_cache.sh`
* list_listening_ports-lsof.sh
  * usage: `./list_listening_ports-lsof.sh`

## mirror
* crates.io: ruby mirror
  * usage: `cp ./crates.io ~/.cargo/config`

## qemu
* shrunk.sh: compress qemu disk file
  * usage: `./shrunk.sh <DISK FILE PATH>`

## ssh
* login.expect: login into ssh server
  * usage: `./login.expect`
* scp_download.expect
  * usage: `./scp_download.expect <REMOTE FILE PATH>`
* scp_upload.expect
  * usage: `./scp_upload.expect <LOCAL FILE PATH> <REMOTE FILE PATH>`
