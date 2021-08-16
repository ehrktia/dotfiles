if status is-interactive
    # Commands to run in interactive sessions can go here
    # set global editor
     set -gx EDITOR nvim
     #add custom installation to path var
fish_add_path -P /usr/local/go/bin
fish_add_path -aP $HOME/go/bin # local go bin path for pkgs
end
