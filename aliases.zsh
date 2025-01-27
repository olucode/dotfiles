# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reload.zsh="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"

# Directories
alias dotfiles="cd $DOTFILES"

# Laravel

# PHP
alias composer.fresh="rm -rf vendor/ composer.lock && composer i"
alias php74="docker run -it -w /data -v ${PWD}:/data:delegated --entrypoint php --rm registry.gitlab.com/grahamcampbell/php:7.4"
alias php8="docker run -it -w /data -v ${PWD}:/data:delegated --entrypoint php --rm registry.gitlab.com/grahamcampbell/php:8.0"

# JS
alias npm.fresh="rm -rf node_modules/ package-lock.json && npm install"
alias watch="npm run watch"

# Git
alias gst="git status"
alias gb="git branch"
alias gc="git commit"
alias gl="git log --oneline --decorate --color"
alias amend="git commit --amend --no-edit"
alias commit="git commit -m"
alias diff="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"

alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

alias sc="clear"
alias bluetooth="/etc/init.d/bluetooth"
alias hgrep="history | grep"

# PHP
alias art="php artisan"
alias phpserve="php -S localhost:3000"
alias phplaraserve="php -S localhost:3000 -t public"
alias tinker="php artisan tinker"
alias migmake="art make:migration"

# Git
alias gac="git add . && git commit"
alias commitnum="git log | grep commit | wc -l"
alias gporigin="git push origin"
alias gch="git checkout"
alias gchdev="git checkout dev"
alias gchmaster="git checkout master"
alias nah="git reset --soft HEAD~1"
alias undo="git reset HEAD~1"
alias redo="git commit -c ORIG_HEAD"

# Git Flow
alias gfhf="gch master && git pull && gch develop && git pull && git flow hotfix finish"

# Mukuru Specific
alias mtools="ssh mukuru-tools"
alias fullaccess='f() {sudo chmod 777 ruckus/db/migrate/$1 };f'
alias valtari_test="docker-compose -f docker-compose.yml -f docker-compose.override.yml -f docker-compose-test.yml exec -T valtari-test vendor/bin/codecept run --env docker"
alias valtari_test_debug="docker-compose -f docker-compose.yml -f docker-compose.override.yml -f docker-compose-test.yml exec -T valtari-test vendor/bin/codecept run --debug --env docker"
alias valtari_generate="docker-compose exec valtari php ruckus/generate.php"
alias valtari_phpunit="docker-compose -f docker-compose.yml -f docker-compose.override.yml -f docker-compose-test.yml exec -T valtari-test vendor/bin/phpunit"
alias valtari_migrate="docker-compose exec valtari php ruckus/main.php db:migrate"
alias valtari_test_migrate="docker-compose exec valtari-test php ruckus/main.php db:migrate"
alias valtari_code_style="docker-compose exec valtari composer phpcs-valtari-code-style"
alias valtari_code_style_fix="docker-compose exec valtari composer phpcs-valtari-code-style-fix"

alias ls='lsd'

alias upstream="git pull upstream"
alias upmaster="upstream master"

alias gjson="ls *.json | grep"
alias catcop='f() {cat $1 | pbcopy };f'

alias ssh-olucode="ssh-add -D && ssh-add ~/.ssh/id_ed25519_olucode"
alias ssh-deimos="ssh-add -D && ssh-add ~/.ssh/id_ed25519_2023"
