# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(rails3 git ruby brew bundler rvm)
## rails3
## rc - rails console
## rd - rails destroy
## rdb - rails dbconsole
## rdbm - rake db:migrate db:test:clone
## rg - rails generate
## rp - rails plugin
## rs - rails server
## rsd - rails server --debugger
## devlog - tail -f log/development.log
## rdm - rake db:migrate
## rdr - rake db:rollback
#
### bundler
## be - bundle exec
## bi - bundle install
## bu - bundle update
#
### rvm
## rb18 [GEMSET]: shortcut for rvm use ruby-1.8.7-p334@GEMSET (with gemset completion)
## rb19 [GEMSET]: shortcut for rvm use ruby-1.9.2-p180@GEMSET (with gemset completion)
## rubies: list installed rubies
## gemsets: list gemsets for currently active ruby
## gems: list gems available in currently active gemset 
#
### git
## Too many aliases to mention...I suggest looking at them in your editor (~/.oh-my-zsh/plugins/git/git.plugin.zsh)
#
###ruby
## rfind - find ruby files in directory

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export RUBYOPT=-Ku
export PATH=/Users/hvitor/.rvm/gems/ruby-1.9.3-p194/bin:/Users/hvitor/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/hvitor/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/hvitor/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
