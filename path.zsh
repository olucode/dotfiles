# Load Composer tools
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# Make sure coreutils are loaded before system commands
# I've disabled this for now because I only use "ls" which is
# referenced in my aliases.zsh file directly.
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Flutter Stuff
export FLUTTER_ROOT="$HOME/fvm/default/bin"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$FLUTTER_ROOT:$ANDROID_HOME/emulator:$PATH:$HOME/Library/Android/sdk/emulator:$PATH"

# Added by Windsurf
export PATH="/Users/olumide/.codeium/windsurf/bin:$PATH"

# Dotnet
export PATH="$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools"
