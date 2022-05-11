# dotfiles-starter
Starter/demo repo for working with dotfiles and VS Code Remote-Containers. See the [Remote-Containers docs](https://code.visualstudio.com/docs/remote/containers#_personalizing-with-dotfile-repositories) for more info.


There are two install scripts in this repo: `install.sh` and `install-devcontainer.sh`.
The idea is to use `install.sh` on your host and configure Remote-Containers to use `install-devcontainer.sh`.
`install-devcontainer.sh` sets a `DEV_CONTAINER` environment variable and then calls `install.sh`. This allows you to test for the `DEV_CONTAINER` environment variable to have config that only applies in a dev container (or not in a dev container).
