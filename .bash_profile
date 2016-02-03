if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

alias ll='ls -l'
alias vi='vim'
alias python='python3'

ANDROID_SDK='/Users/mberkman/Library/Android/sdk/platform-tools'

PATH=/opt/local/bin:/opt/local/sbin:/usr/local/sbin:$PATH:$ANDROID_SDK:/Applications/Postgres.app/Contents/Versions/9.5/bin
export PATH

# DEVELOPMENT
#JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_55.jdk/Contents/Home/
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/
export JAVA_HOME

function setjdk() {
	if [ $# -eq 0 ]; then
		echo "ERROR: no jdk version given, choose from below"
		echo "usage: setjdk 1.7"
		echo
		/usr/libexec/java_home --verbose
		return
	fi

	echo "using jdk $@"
	removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
	if [ -n "${JAVA_HOME+x}" ]; then
		removeFromPath $JAVA_HOME/bin
	fi
	export JAVA_HOME=`/usr/libexec/java_home -v $@`
	export PATH=$JAVA_HOME/bin:$PATH
}
function removeFromPath() {
	export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}
setjdk 1.8

# The next line updates PATH for the Google Cloud SDK.
source '/Users/mberkman/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/mberkman/google-cloud-sdk/completion.bash.inc'

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
