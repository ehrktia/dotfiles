# set env vars global
set -Ux SCRIPT_FEATURE_FLAG_PYTHON 1
set -Ux TOOLS_VERSION '20210609.155238.6564ac12e6'
set -Ux EDITOR nvim
set -Ux LDFLAGS "-L/usr/local/opt/zlib/lib"
set -Ux CPPFLAGS "-I/usr/local/opt/zlib/include"
set -Ux LDFLAGS "-L/usr/local/opt/readline/lib"
set -Ux CPPFLAGS "-I/usr/local/opt/readline/include"
set -Ux PYENV_ROOT "$HOME/.pyenv"
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_path
set -Ux CLOUDSDK_PYTHON "/usr/bin/python"
set -gx CPPFLAGS "-I/usr/local/opt/openjdk/include"
set -gx CPPFLAGS "-I/usr/local/opt/sqlite/lib"
set -gx LDFLAGS "-L/usr/local/opt/sqlite/include"
set -gx PKG_CONFIG_PATH "/usr/local/opt/sqlite/lib/pkgconfig"



# python global version setup
#pyenv global 3.8.5
# path add to env PATH
fish_add_path -P /opt/puppetlabs/bin/puppet
fish_add_path -P $HOME/.pyenv/bin
fish_add_path -P $HOME/.pyenv/shims
fish_add_path -P $HOME/.cargo/bin
fish_add_path -P $HOME/google-cloud-sdk/bin
fish_add_path -P $HOME/.bin
fish_add_path -P /usr/local/bin/docker-langserver
fish_add_path -P $HOME/.improbable/imp-tool/subscriptions
fish_add_path -P /usr/local/Cellar
fish_add_path -P /usr/local/opt/postgresql@9.6/bin
fish_add_path -P /usr/local/opt/python3/bin
fish_add_path -P $HOME/go/bin
fish_add_path -P /usr/local/go/bin/go
fish_add_path -P /usr/local/opt/openjdk/bin
fish_add_path -P /usr/local/opt/sqlite/bin




direnv hook fish | source


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/karthickayyapillai/google-cloud-sdk/path.fish.inc' ]; . '/Users/karthickayyapillai/google-cloud-sdk/path.fish.inc'; end
  #pyenv updates
set -gx PYENV_SHELL fish
source '/Users/karthickayyapillai/.pyenv/libexec/../completions/pyenv.fish'
command pyenv rehash 2>/dev/null
function pyenv
  set command $argv[1]
  set -e argv[1]

  switch "$command"
  case activate deactivate rehash shell
    source (pyenv "sh-$command" $argv|psub)
  case '*'
    command pyenv "$command" $argv
  end
end
#pyenv virtual env setup
set -gx PATH '/Users/karthickayyapillai/.pyenv/plugins/pyenv-virtualenv/shims' $PATH;
set -gx PYENV_VIRTUALENV_INIT 1;
function _pyenv_virtualenv_hook --on-event fish_prompt;
  set -l ret $status
  if [ -n "$VIRTUAL_ENV" ]
    pyenv activate --quiet; or pyenv deactivate --quiet; or true
  else
    pyenv activate --quiet; or true
  end
  return $ret
end
