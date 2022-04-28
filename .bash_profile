# Bash configuration file

PROMPT_COMMAND=bash_prompt

bash_prompt() {
	local EXIT="$?"
	local GREEN="\[\e[0;32m\]"
	local RED="\[\e[0;31m\]"
	local RESET="\[\e[0m\]"

	PS1=""

	if [ $EXIT != 0 ]; then
		PS1+="${RED}"
	else
		PS1+="${GREEN}"
	fi
	if [ -n "$IN_NIX_SHELL" ]; then
		PS1+=";; "
	else
		PS1+="; "
	fi
	PS1+="${RESET}"
}

export PATH=$PATH:/home/louis/bin

# Kitty terminal configuration
if [ "$TERM" == "xterm-kitty" ]; then
	alias icat="kitty +kitten icat"
fi
