# dotfiles
My personal Linux environment setup scripts. <br>
See: [dotbot project](https://github.com/anishathalye/dotbot).

## Prerequisites

1. Install git
`sudo apt update && sudo apt install git`

2. Generate ssh if needed
`ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/<KEY_NAME> -C "<E-MAIL>"`

3. Add key to the ssh-agent
`ssh-add ~/.ssh/<KEY_NAME>`

4. [Add a new SSH key to your GitHub account](https://help.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account)


## Using it
1. Clone this repository: `git clone https://github.com/dhincerti/dotfiles.git ~/.dotfiles`
3. Change directory to repository root: `cd ~/.dotfiles`
2. Run `./install.sh` file.
3. Go take a coffee.
4. Be happy.


## Post install manual steps
1. Change Guake Preferencies: `Shell > Default interpreter > /usr/bin/zsh`


## Troubleshoting
#### Possible problems related with super user $PATH

1. While adding ssh keys:
`Could not open a connection to your authentication agent.`

Fix it by adding the following lines to the end of `~/.bashrc` file:
```
# Export variables to fix super user issues
export PATH=$HOME/bin:/usr/local/bin:$PATH
```

2. While using apt-get
```
An error was encountered while executing action apt-get
Action apt-get not handled

==> Some tasks were not executed successfully
```

Fix it by installing pip
`sudo apt install python-pip`
