# set env vars global
set -Ux SCRIPT_FEATURE_FLAG_PYTHON 1
set -Ux TOOLS_VERSION '20210609.155238.6564ac12e6'
set -Ux EDITOR nvim
fish_add_path -P $HOME/.cargo/bin
fish_add_path -P $HOME/google-cloud-sdk/bin
fish_add_path -P $HOME/.bin
fish_add_path -P $HOME/go/bin
fish_add_path -P $HOME/.local/nvim/bin




direnv hook fish | source


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/karthickayyapillai/google-cloud-sdk/path.fish.inc' ]; . '/Users/karthickayyapillai/google-cloud-sdk/path.fish.inc'; end
