export BUNDLER_EDITOR=atom
export EDITOR='atom -w'

# directories
alias ..='cd ..'
alias ...='cd ../..'

# grep
alias grep='grep --colour=auto'
alias psgrep="ps aux | grep"

# docker
alias dc='docker-compose'

# local server
alias srv="ruby -rwebrick -e'WEBrick::HTTPServer.new(:Port => 3000, :DocumentRoot => Dir.pwd).start'"

# bundler
alias be='bundle exec'

# git
alias gst='git status'
alias gf='git fetch'
alias gl='git pull'
alias glr='git pull --rebase'
alias gp='git push'
alias gr='git rebase'
alias gd='git diff'
alias gdy='git diff "@{yesterday}" | atom'
alias ga='git add -A'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gco='git checkout'
alias gcb='git checkout -b'

gbr() {
  echo "creating remote branch"
  git checkout -b $1
  git push origin $1
  git branch --set-upstream $1 origin/$1
}

# lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
