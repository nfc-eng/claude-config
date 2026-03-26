# Snapshot file
# Unset all aliases to avoid conflicts with functions
unalias -a 2>/dev/null || true
# Functions
# Shell Options
shopt -u cdable_vars
shopt -u cdspell
shopt -u checkhash
shopt -u checkwinsize
shopt -s cmdhist
shopt -u compat31
shopt -u dotglob
shopt -u execfail
shopt -u expand_aliases
shopt -u extdebug
shopt -u extglob
shopt -s extquote
shopt -u failglob
shopt -s force_fignore
shopt -u gnu_errfmt
shopt -u histappend
shopt -u histreedit
shopt -u histverify
shopt -s hostcomplete
shopt -u huponexit
shopt -s interactive_comments
shopt -u lithist
shopt -s login_shell
shopt -u mailwarn
shopt -u no_empty_cmd_completion
shopt -u nocaseglob
shopt -u nocasematch
shopt -u nullglob
shopt -s progcomp
shopt -s promptvars
shopt -u restricted_shell
shopt -u shift_verbose
shopt -s sourcepath
shopt -u xpg_echo
set -o braceexpand
set -o hashall
set -o interactive-comments
set -o monitor
set -o onecmd
shopt -s expand_aliases
# Aliases
alias -- appenv='source ~/appandtaps/bin/activate'
alias -- facebook='/usr/bin/open -a '\''/Applications/Google Chrome.app'\'' '\''https://www.facebook.com/'\'''
alias -- github='/usr/bin/open -a '\''/Applications/Google Chrome.app'\'' '\''https://github.com/'\'''
alias -- localhost='/usr/bin/open -a '\''/Applications/Google Chrome.app'\'' '\''http://localhost:3000/'\'''
alias -- mysql='/usr/local/mysql/bin/mysql -u root -p'
alias -- savant='meteor --settings ../../Dropbox/savant/config.json'
# Check for rg availability
if ! (unalias rg 2>/dev/null; command -v rg) >/dev/null 2>&1; then
  function rg {
  if [[ -n $ZSH_VERSION ]]; then
    ARGV0=rg /Users/nicholas/.local/share/claude/versions/2.1.81 "$@"
  elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "win32" ]]; then
    ARGV0=rg /Users/nicholas/.local/share/claude/versions/2.1.81 "$@"
  elif [[ $BASHPID != $$ ]]; then
    exec -a rg /Users/nicholas/.local/share/claude/versions/2.1.81 "$@"
  else
    (exec -a rg /Users/nicholas/.local/share/claude/versions/2.1.81 "$@")
  fi
}
fi
export PATH=/Users/nicholas/.local/bin\:/Library/Frameworks/Python.framework/Versions/3.9/bin\:/Users/nicholas/anaconda3/bin\:/Library/Frameworks/Python.framework/Versions/3.5/bin\:/Library/Frameworks/Python.framework/Versions/3.5/bin\:/usr/local/bin\:/usr/bin\:/bin\:/usr/sbin\:/sbin\:/usr/local/opt/python\@3.9/Frameworks/Python.framework/Versions/3.9/bin\:/usr/local/share/dotnet\:/Applications/Wireshark.app/Contents/MacOS\:/Applications/iTerm.app/Contents/Resources/utilities
