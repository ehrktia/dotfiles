# set env vars global
set -gx SCRIPT_FEATURE_FLAG_PYTHON 1
set -gx TOOLS_VERSION '20210609.155238.6564ac12e6'
# python global version setup
pyenv global 3.8.5
# path add to env PATH
fish_add_path /opt/puppetlabs/bin/puppet
fish_add_path $HOME/.cargo/bin
# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/google-cloud-sdk/path.fish.inc' ]; . '$HOME/google-cloud-sdk/path.fish.inc'; end
# direnv setup
direnv hook fish | source

