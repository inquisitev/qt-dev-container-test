# Qt dev container example
This repo is an example to setup a developer environment in a dev container with qt. 
It is intended to be deployed to a boot to qt device without using qt creator. 

Implementations of this repo will need to use their specific tool chain and work out
the details of packaging. I expect that a bootstrap.sh will be required to gather and build
the tool chains. this will need to run in the startContainer.sh file.

## Tox
Tox is used as the main command runner for convenience. this strings together
cmake, ctest, and cpack commands to something easy and repeatable. Dev container
should be ready to run this out of the box, and it should use the same commands 
in CI that will be used locally. 

Run everything with ```tox```. See the tox.ini for other supported commands

## Prerequesites
This repo relies on devcontainers, so install the cli if you want to use with nvim
npm install -g @devcontainers/cli

## Setting up the dev container
```./startDevContainer.sh``` Will setup the dev container and install my personal dotfiles. 
My personal dotfiles are a private repo, so i have ssh-agent setup to forward from host. 
private dotfiles complicates the setup such that i cannot use the --dotfiles-repository from
the devcontainers cli and i must install after the container is setup and running. 

Doing this from the startDevContainer script makes it a minimally involved and repeatable process
nonetheless. That will likely be a part of my dotfiles so that i can run it from any host on any 
dev container
