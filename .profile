export EDITOR=vim
export PYTHONIOENCODING=UTF-8
export PYTHONDONTWRITEBYTECODE=1
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export HISTCONTROL=ignoreboth;
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH="$HOME/bin:$PATH";
export PATH="~/.pyenv:$PATH"
export PATH=$PATH:$(go env GOPATH)/bin

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

for file in ~/.{exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;