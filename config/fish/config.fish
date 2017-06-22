set -gx GOPATH $HOME/go
set -gx PATH $PATH $HOME/.local/bin $GOPATH/bin ~/.npm-global/bin ~/.telegram
set -gx CDPATH $CDPATH . .. $GOPATH/src/github.com $GOPATH/src/gopkg.in $GOPATH/src/srcd.works $HOME

set -g theme_date_format "+%a %H:%M"

alias vi "nvim"
alias vim "nvim"

function gocov
        go test -coverprofile=cover.out $argv[1]; and go tool cover -html=cover.out; and rm cover.out
end

function docker-purge
        bash -c 'docker rmi $(docker images -f dangling=true -q) --force' > /dev/null
end

function docker-purge-ps
        bash -c 'docker rm $(docker ps --all -q) --force'
end

function docker-rmi
        echo "/var/lib/docker/image/devicemapper/imagedb/*/sha256/$argv[1]*";
        sudo rm -rf "/var/lib/docker/image/devicemapper/imagedb/*/sha256/$argv[1]*";
end

source "$HOME/.opam/opam-init/init.fish" > /dev/null 2> /dev/null; or true
