case "$TERM" in
xterm*|rxvt*|linux|screen|SCREEN)
	# Color 'ls', etc.
	export CLICOLOR=1
 
	# Looks ugly in xterm unless you use my .Xdefaults
	PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
 
	# Set title
	PS1="\[\e]0;\u@\h: \w\a\]$PS1"
	;;
*)
	# 
	PS1='\u@\h:\w\$ '
	;;
esac
