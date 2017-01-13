set -gx GOPATH $HOME/go
set -gx PATH $PATH $HOME/.local/bin $GOPATH/bin
set -gx CDPATH $CDPATH $GOPATH/src/github.com . .. $HOME
