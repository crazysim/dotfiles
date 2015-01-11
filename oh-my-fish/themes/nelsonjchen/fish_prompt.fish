function __caret_color
	if [ $USER = "root" ]
	  echo -n "red"
	else
	  echo -n "magenta"
	end
end

function __return_code
  echo "unimpted"
end

function fish_prompt
	set user (set_color -o cyan)(whoami)(set_color normal)
	set machine (set_color -o blue)(hostname| cut -d . -f 1)(set_color normal)
	set directory (set_color -o green)(__zsh_percent_tilde)(set_color normal)
	set -g __fish_git_prompt_show_informative_status 'yes'
	set -g __fish_git_prompt_showcolorhints 'yes'
	set git (__fish_git_prompt)

	echo -s $user (set_color yellow)'@' $machine ':' $directory $git

	echo (set_color (__caret_color))(__zsh_percent_hash)' '(set_color normal)
end

function fish_right_prompt -d "Write out the right prompt"
	echo -ns (__return_code)" "(date "+%D")" - "(date "+%T")
end

### Polyfills

## ZSH polyfills
# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html

# It's like prompt_pwd, but not exactly.
function __zsh_percent_tilde
	# This still needs work to mimic the $HOME condensation and other variables.
	#
	# However, this might be going against fish ideals. I'll just do $HOME.
	#
	# TODO
  pwd
end

# $ for luser, # for superuser
function __zsh_percent_hash
	if [ $USER = "root" ]
	  echo -n "#"
	else
	  echo -n "\$"
	end
end

