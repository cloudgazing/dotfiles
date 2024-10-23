# Documentation: https://github.com/romkatv/zsh4humans/blob/v5/README.md.

# Periodic auto-update on Zsh startup: 'ask' or 'no'.
# You can manually run `z4h update` to update everything.
zstyle ':z4h:' auto-update      'no'
# Ask whether to auto-update this often; has no effect if auto-update is 'no'.
zstyle ':z4h:' auto-update-days '28'

# Keyboard type: 'mac' or 'pc'.
zstyle ':z4h:bindkey' keyboard  'mac'

# Don't start tmux.
zstyle ':z4h:' start-tmux       no

# Mark up shell's output with semantic information.
zstyle ':z4h:' term-shell-integration 'yes'

# Right-arrow key accepts one character ('partial-accept') from
# command autosuggestions or the whole thing ('accept')?
# zstyle ':z4h:autosuggestions' forward-char 'accept'

# Recursively traverse directories when TAB-completing files.
zstyle ':z4h:fzf-complete' recurse-dirs 'no'
zstyle ':z4h:*' fzf-flags --color=hl:63,hl+:63

# Enable direnv to automatically source .envrc files.
zstyle ':z4h:direnv'         enable 'no'
# Show "loading" and "unloading" notifications from direnv.
zstyle ':z4h:direnv:success' notify 'no'

# Enable ('yes') or disable ('no') automatic teleportation of z4h over
# SSH when connecting to these hosts.
# The default value if none of the overrides above match the hostname.
zstyle ':z4h:ssh:*'                   enable 'no'

# Send these files over to the remote host when connecting over SSH to the
# enabled hosts.
# zstyle ':z4h:ssh:*' send-extra-files '~/.nanorc' '~/.env.zsh'

# Clone additional Git repositories from GitHub.
#
# This doesn't do anything apart from cloning the repository and keeping it
# up-to-date. Cloned files can be used after z4h init.
# z4h install command here

# Install or update core components (fzf, zsh-autosuggestions, etc.) and
# initialize Zsh. After this point console I/O is unavailable until Zsh
# is fully initialized. Everything that requires user interaction or can
# perform network I/O must be done above. Everything else is best done below.
z4h init || return

# Extend PATH.
# path=(~/bin $path)

# Export environment variables.--
export DO_NOT_TRACK=1
export HOMEBREW_NO_ENV_HINTS=1

# # NVM
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# #[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# # bun
export BUN_INSTALL="$HOME/.local/share/bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# # bun completions
# #[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

# # ruby
# # export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"

# # The next line updates PATH for the Google Cloud SDK.
# # if [ -f '$HOME/.local/share/google-cloud-sdk/path.zsh.inc' ]; then . '$HOME/.local/share/google-cloud-sdk/path.zsh.inc'; fi

# # The next line enables shell command completion for gcloud.
# #if [ -f '$HOME/local/share/google-cloud-sdk/completion.zsh.inc' ]; then . '$HOME/local/share/google-cloud-sdk/completion.zsh.inc'; fi

# END Export environment variables.--

# Source additional local files if they exist.
# z4h source ~/.env.zsh

# Use additional Git repositories pulled in with z4h install.
# z4h source and load commands here

# Define key bindings.

# Autoload functions.

# Define functions and completions.

# Define named directories: ~w <=> Windows home directory on WSL.

# Define aliases.

# Add flags to existing aliases.

# Set shell options: http://zsh.sourceforge.net/Doc/Release/Options.html.
# setopt glob_dots     # no special treatment for file names with a leading dot
# setopt no_auto_menu  # require an extra TAB press to open the completion menu

# setopt EXTENDED_HISTORY # Write the history file in the ':start:elapsed;command' format.
# setopt HIST_IGNORE_DUPS # Do not record an event that was just recorded again.

[[ ! -v functions[command_not_found_handler] ]] || unfunction command_not_found_handler
