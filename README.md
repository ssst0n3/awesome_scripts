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
* make_dockerhub_repository_active.sh: re active the dockerhub image
  * usage: `./make_dockerhub_repository_active.sh <REPOSITORY>`
    * or `./make_dockerhub_repository_active.sh <REPOSITORY> <TAG>`

## git
* gitignore: gitignore file template
* git_init.sh: clean all commits and git history, re commit current status to repository

## golang
* clean.sh: clean golang's cache
* test.sh: golang test script, do not use testcache, single thread

## java
* run.sh
  * usage: `./run.sh qualified-class-name [args]`

## k8s
* pod_netstat.sh
  * usage: `./pod_netstat.sh <POD_ID>`

## linux
* clean_google-chrome_cache.sh
  * usage: `./clean_google-chrome_cache.sh`
* clean_homebrew-core.sh
  * usage: `./clean_homebrew-core.sh`
* clean_jetbrians_cache.sh
  * usage: `./clean_jetbrians_cache.sh`
* clean_journal_logs.sh
  * usage: `sudo clean_journal_logs.sh`
* clean_memory_cache.sh
  * usage: `sudo clean_memory_cache.sh`
* clean_vscode_cache.sh
  * usage: `./clean_vscode_cache.sh`
* list_listening_ports-lsof.sh
  * usage: `./list_listening_ports-lsof.sh`
* terminal-set-title.bashrc
  * only works for bash
  * usage: `source ./terminal-set-title.bashrc; set-title <TITLE>`
* restart-network.sh
  * restart network
  * usage: `./restart-network.sh`

## media
* convert2gif.sh
  * usage: `./convert2gif.sh <FILENAME> <WIDTH>`

## mirror
* crates.io: ruby mirror
  * usage: `cp ./crates.io ~/.cargo/config`

## nginx
* ssl_proxy: a ssl proxy 
  * usage: `docker-compose up -d`

## qemu
* shrunk.sh: compress qemu disk file
  * usage: `./shrunk.sh <DISK FILE PATH>`

## ssh
* cert
  * login.expect: login into ssh server
    * usage: `./login.expect`
  * scp_download.expect
    * usage: `./scp_download.expect RmoteFilePath [LocalFilePath]`
  * scp_upload.expect
    * usage: `./scp_upload.expect LocalFilePath [RemoteFilePath]`
  * init.sh: Replace the ssh address and credentials in the expect scripts
    * usage: `./init.sh Ip Port Username CertFilePath`
* pwd
  * login.expect: as same as cert
  * scp_download.expect: as same as cert
  * scp_upload.expect: as same as cert
  * init.sh: Replace the ssh address and credentials in the expect scripts
    * usage: `./init.sh Ip Port Username Password`
* ssh_config_file.sh: ssh by config file
  * usage: `./ssh_config_file.sh Hostname Ip Username Identifile`