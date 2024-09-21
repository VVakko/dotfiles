#----------------------------------------------------------------------------
# ~/.bash_profile: executed by bash(1) for login shells.
# $Revision: 2.30 (CentOS/macOS/Ubuntu Edition by Wakko Warner) $
# $Comment: Any comments please send to wakko@acmelabs.spb.ru $
#----------------------------------------------------------------------------

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Test for an interactive shell. There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Include ~/.config/bashrc.d/* if it exists
if [ -d ~/.config/bashrc.d ]; then
	for i in `ls ~/.config/bashrc.d/` ; do
		if [[ -f ~/.config/bashrc.d/${i} ]]; then
			. ~/.config/bashrc.d/${i}
		fi
	done
	unset i
fi
