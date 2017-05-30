# tmux-loadavg

Tmux plugin to monitor load average.

## Usage

Add one of the following format string to `status-right` tmux option.

```
set -g status-right "LA: #{cpu_loadavg}"
```

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'chocoby/tmux-loadavg'

Hit `prefix + I` to fetch the plugin and source it.

If format strings are added to `status-right`, they should now be visible.

### Manual Installation

Clone the repo:

    $ git clone https://github.com/chocoby/tmux-loadavg ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/loadavg.tmux

Reload TMUX environment (type this in terminal)

    $ tmux source-file ~/.tmux.conf

If format strings are added to `status-right`, they should now be visible.

## Special Credit

This plugin is roughly based on the various plugins in [https://github.com/tmux-plugins]("tmux-plugins").

### License

[MIT](LICENSE)
