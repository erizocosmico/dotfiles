set -gx GOPATH $HOME/go
set -gx PATH $PATH $GOPATH/bin $HOME/.npm-global/bin $HOME/.local/bin /usr/local/bin /var/lib/snapd/snap/bin /usr/local/bin $HOME/.cargo/bin
set -gx CDPATH $CDPATH . .. $HOME

# opam configuration
source "$HOME/.opam/opam-init/init.fish" > /dev/null 2> /dev/null; or true

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.fish.inc" ]; . "$HOME/google-cloud-sdk/path.fish.inc"; end

function docker-purge
        bash -c 'docker rmi $(docker images -f dangling=true -q) --force' > /dev/null
end

function docker-purge-ps
        bash -c 'docker rm $(docker ps --all -q) --force'
end

function monitor-off
	xrandr --output DP-1 --off
end

function monitor-on
	xrandr --output DP-1 --auto --above eDP-1
end

function setup-mouse
	xinput --set-prop 15 320 -0.6 # speed scroll
	xinput --set-prop 15 308 1 # natural scroll
	xinput --set-prop 15 322 1 # left-handed
end
