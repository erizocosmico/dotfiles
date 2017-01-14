set -gx GOPATH $HOME/go
set -gx PATH $PATH $HOME/.local/bin $GOPATH/bin ~/.npm-global/bin
set -gx CDPATH $CDPATH $GOPATH/src/github.com . .. $HOME

set -g theme_date_format "+%a %H:%M"
set -g theme_color_scheme "solarized-dark"
