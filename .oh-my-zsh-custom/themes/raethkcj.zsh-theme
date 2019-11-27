# Current working directory in blue, then git information, a blue $, and then reset the color for commands
PROMPT='%{$FG[067]%}%c$(git_prompt_info) %{$FG[067]%}$ %{$reset_color%}'

# Space and yellow opening parenthese, then set color for branch name
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[178]%} (%b%{$FG[189]%}"

# Green checkmark or red x, for clean or dirty git status 
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗"

# Closing yellow parenthese
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$FG[178]%})"

# LS_COLORS
LS_COLORS=
LSCOLORS=
