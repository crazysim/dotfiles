function fish_prompt
	set user (set_color --bold cyan)(whoami)(set_color normal)

	set machine (set_color --bold blue)(hostname| cut -d . -f 1)(set_color normal)

	set -l realhome ~
	set directory (set_color --bold green)(echo $PWD | sed -e "s|^$realhome|~|")(set_color normal)

	set -g __fish_git_prompt_show_informative_status 'yes'
	set -g __fish_git_prompt_showcolorhints 'yes'
	set git (__fish_git_prompt)

	echo -s $user (set_color yellow)'@' $machine ':' $directory $git

	if [ $USER = "root" ]
		set caret (set_color red ) "#"
	else
		set caret (set_color magenta) "\$"
	end

	echo -s $caret ' '(set_color normal)
end

function fish_right_prompt -d "Write out the right prompt"
	set -l last_status $status

	if test $last_status -ne 0
		set_color --bold red
		echo -ns $last_status ' :( '
		set_color normal
	end

	echo -ns (date "+%D")" - "(date "+%T")
end