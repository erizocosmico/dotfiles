set -gx GOPATH $HOME/go
set -gx PATH $PATH $HOME/.local/bin $GOPATH/bin ~/.npm-global/bin ~/.cargo/bin ~/.telegram
set -gx CDPATH $CDPATH . .. $GOPATH/src/github.com $GOPATH/src/gopkg.in $HOME

set -g theme_date_format "+%a %H:%M"

alias vi "nvim"
alias vim "nvim"

function gocov
        go test -coverprofile=cover.out $argv[1]; and go tool cover -html=cover.out; and rm cover.out
end

function docker-purge
        bash -c 'docker rmi $(docker images -f dangling=true -q)' > /dev/null
end
