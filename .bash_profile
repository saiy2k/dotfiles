PATH="/usr/local/bin:/usr/local/subversion/bin:$PATH"
PATH="/android-sdk-mac_x86/platform-tools:$PATH"
export PATH

##
# Your previous /Users/Digient/.bash_profile file was backed up as /Users/Digient/.bash_profile.macports-saved_2011-09-05_at_15:22:32
##

# MacPorts Installer addition on 2011-09-05_at_15:22:32: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples


#ANSI color codes
RS="\[\033[0m\]"    # reset
HC="\[\033[1m\]"    # hicolor
UL="\[\033[4m\]"    # underline
INV="\[\033[7m\]"   # inverse background and foreground
FBLK="\[\033[30m\]" # foreground black
FRED="\[\033[31m\]" # foreground red
FGRN="\[\033[32m\]" # foreground green
FYEL="\[\033[33m\]" # foreground yellow
FBLE="\[\033[34m\]" # foreground blue
FMAG="\[\033[35m\]" # foreground magenta
FCYN="\[\033[36m\]" # foreground cyan
FWHT="\[\033[37m\]" # foreground white
BBLK="\[\033[40m\]" # background black
BRED="\[\033[41m\]" # background red
BGRN="\[\033[42m\]" # background green
BYEL="\[\033[43m\]" # background yellow
BBLE="\[\033[44m\]" # background blue
BMAG="\[\033[45m\]" # background magenta
BCYN="\[\033[46m\]" # background cyan
BWHT="\[\033[47m\]" # background white

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1="$HC$FYEL[ ${debian_chroot:+($debian_chroot)}$FBLE\w $FYEL]\\$ $RS"
    PS2="$HC$FYEL> $RS"
else
    PS1='${debian_chroot:+($debian_chroot)}\w\$ '
fi
unset color_prompt force_color_prompt

export mamp=/Applications/MAMP/bin/mamp
export nm=~/Desktop/nm/scripts
export db=~/Dropbox/Projects/
export taxi=/Projects/TaxiPlus/TaxiPlus/
export fun=/Projects/Funsip/

shopt -s cdable_vars
