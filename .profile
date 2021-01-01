# Make vim the default editor.
export EDITOR=vim
# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING=UTF-8
export PYTHONDONTWRITEBYTECODE=1

# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL=ignoreboth;

# Prefer US English and use UTF-8.
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Add pyenv to the `$PATH`
export PATH="~/.pyenv:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export CFLAGS="-L$(brew --prefix zlib)/include -L$(brew --prefix bzip2)/include"
export LDFLAGS="-L$(brew --prefix zlib)/lib -L$(brew --prefix bzip2)/lib"

# Add go to the `$PATH`
export PATH=$PATH:$(go env GOPATH)/bin

for file in ~/.{exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;