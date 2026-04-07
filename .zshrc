# Editor
export EDITOR='vim'

# Colors
export CLICOLOR=1

# History
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS

# Prompt
parse_git_branch() {
    git branch 2>/dev/null | sed -n 's/* \(.*\)/ (\1)/p'
}

setopt PROMPT_SUBST
export PS1='%n@macbook:%F{cyan}%~%f%F{magenta}$(parse_git_branch)%f$ '
