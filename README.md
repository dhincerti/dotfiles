# dotfiles
My personal Linux environment setup scripts. <br>
See: [dotbot project](https://github.com/anishathalye/dotbot).

## Prerequisites

Install git: `sudo apt update && sudo apt install git`

## Using it
1. Clone this repository: `git clone https://github.com/dhincerti/dotfiles.git ~/.dotfiles`
3. Change directory to repository root: `cd ~/.dotfiles`
2. Run `./install.sh` file.
3. Go take a coffee.
4. Be happy.


## Manual steps
1. Change Guake Preferencies: Shell > Default interpreter > /usr/bin/zsh


## Troubleshoting
#### Possible problems related with super user $PATH

1 - While adding ssh keys:
`Could not open a connection to your authentication agent.`

2 - While using apt-get
`An error was encountered while executing action apt-get`

Fix it by adding the following lines to the `~/.bashrc` file:
```
# Export variables to fix super user issues
export PATH=$HOME/bin:/usr/local/bin:$PATH
```
