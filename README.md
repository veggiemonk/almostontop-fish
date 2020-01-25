# Almostontop for Fish shell

## Description

It clears the previous command output every time before new command executed in shell. 

Once installed, this plugin creates a function that gets triggered before the execution of the command thanks to the `--on-event fish_preexec`. This event is documented [here](https://fishshell.com/docs/current/commands.html#function).
The function clears the previous command output and redraws the `fish_prompt`. 

## Why

Ergonomics.

On a laptop, bending in order to look down at the bottom of the screen might cause problems to the neck.
If, like me, your vision is not 100%, this can help when staring at the terminal for extended period of time. 

## Origin

Inspired by [almostontop](https://github.com/Valiev/almostontop) plugin for zsh by [Valiev](https://github.com/Valiev/almostontop)
which is inspired by [alwaysontop](https://github.com/swirepe/alwaysontop) plugin for bash by [swirepe](https://github.com/swirepe).


## Installation

Suggestion: Use [fisher](https://github.com/jorgebucaran/fisher) which is a very clean and easy way to manage plugins.

```
fisher add veggiemonk/almostontop-fish
```

Or install it manually

```
curl https://raw.githubusercontent.com/veggiemonk/almostontop-fish/master/conf.d/almostontop.fish --create-dirs -sLo ~/.config/fish/conf.d/almostontop.fish
```

## Usage

The plugin is automatically load as it is located in `~/.config/fish/conf.d/` 

### Deactivate

To deactivate the plugin in the current session, remove the function:

```
functions -e almostontop
```

### Reactivate

To reactivate the plugin, open a new shell or `source` the code :

```
source ~/.config/fish/conf.d/almostontop.fish
```

### To install fish shell

Check https://fishshell.com

or 

```
brew install fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish # set it as the default shell
```

## Removing the plugin

```
fisher rm veggiemonk/almostontop-fish
```

## Implementation

If you don't want to install the plugin, just copy-paste these 5 lines into your `config.fish`

```
function almostontop --on-event fish_preexec
    tput cup 0 0 # go to top of screen
    fish_prompt  # draw prompt
    echo $argv[1] | fish_indent --ansi # colorize executed command
end
```

## TODO

Implementing a toogle feature. 

Although I've never used that feature, so this feature might never be implement. 
Comments, ideas or pull requests are very much appreciated. :D

