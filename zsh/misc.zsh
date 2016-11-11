###################
# Misc
###################
alias utf8="~/.dotfiles/bin/toUTF8.sh"
alias zshrc="vim ~/.zshrc"
alias starwars="telnet towel.blinkenlights.nl"
alias cow_fortune="exec fortune | cowsay -n"
alias random_word="sort -R /usr/share/dict/usa | head -1"
alias fix_caddy="sudo setcap cap_net_bind_service=+ep /usr/sbin/caddy &>/dev/null"

random_string() { cat /dev/urandom | tr -dc 'a-z' | fold -w "$1" | head -n 1 }

# kill processes, if you only know the name
akill()
{
    for pid in $(ps -ef | grep "$1" | awk '{print $2}');
    do kill -9 $pid;
    done
}

21days()
{

	NOW=$(date +'%a %d.%m.%y %H:%M')
	THEN=$(date -d "21 days" +'%a %d.%m.%y %H:%M')
	echo "21-day rule\n====================\n\nStart: $NOW\nZiel: $THEN"
}

# Weather
weather() {
    curl http://wttr\.in/$1
}

wea() {
	case "$1" in
		"gdf")
			weather Gaildorf
			;;
		"an")
			weather Ansbach
			;;
		*)
			weather $1
			;;
	esac
}

# count characters
count() { echo -n "$1" | wc -c }

# password generator
pwgen() { < /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-21} | cut -d '=' -f 2 | sed 's/;$//' }

###################
# School shortcuts
###################
newdir() { mkdir $(date +"%Y-%m-%d"); cd $(date +"%Y-%m-%d") }

###################
# File transfer
###################
download() { rsync -r -v --progress -e ssh $1 . }
upload() { rsync -r -v --progress -e ssh $2 $1 }
