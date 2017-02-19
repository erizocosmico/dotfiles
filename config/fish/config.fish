set -gx GOPATH $HOME/go
set -gx PATH $PATH $HOME/.local/bin $GOPATH/bin ~/.npm-global/bin ~/.cargo/bin ~/.telegram
set -gx CDPATH $CDPATH $GOPATH/src/github.com . .. $HOME

set -g theme_date_format "+%a %H:%M"
set -g theme_color_scheme "solarized-dark"

function gocov
        go test -coverprofile=cover.out $argv[1]; and go tool cover -html=cover.out; and rm cover.out
end
