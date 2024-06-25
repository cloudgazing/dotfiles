# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

#added for vscode
if [[ "$TERM_PROGRAM" == "vscode" ]]; then
  ITERM_SHELL_INTEGRATION_INSTALLED="Yes"
fi

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# lol aliases
alias wtf='dmesg'
alias onoz='cat /var/log/errors.log'
alias rtfm='man'
alias :3='echo'
alias visible='echo'
alias invisible='cat'
alias moar='more'
alias tldr='less'
alias alwayz='tail -f'
alias icanhas='mkdir'
alias gimmeh='touch'
alias donotwant='rm'
alias dowant='cp'
alias gtfo='mv'
alias nowai='chmod'
alias hai='cd'
alias iz='ls'
alias plz='pwd'
alias ihasbucket='df -h'
alias inur='locate'
alias iminurbase='finger'
alias btw='nice'
alias obtw='nohup'
alias nomz='ps aux'
alias nomnom='killall'
alias byes='exit'
alias cya='reboot'
alias kthxbai='halt'
alias pwned='ssh'
alias hackzor='git init'
alias rulz='git push'
alias bringz='git pull'
alias chicken='git add'
alias oanward='git commit -m'
alias ooanward='git commit -am'
alias yolo='git commit -m "$(curl -s https://whatthecommit.com/index.txt)"'
alias letcat='git checkout'
alias violenz='git rebase'

#thefuck
eval $(thefuck --alias)

# NVM 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# bun completions
#[ -s "/Users/cloudgazing/.bun/_bun" ] && source "/Users/cloudgazing/.bun/_bun"

# ruby
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/cloudgazing/Scripts/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/cloudgazing/Scripts/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/cloudgazing/Scripts/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/cloudgazing/Scripts/google-cloud-sdk/completion.zsh.inc'; fi

# homebrew
export HOMEBREW_NO_ENV_HINTS=1
