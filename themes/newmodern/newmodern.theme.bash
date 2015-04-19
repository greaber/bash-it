SCM_THEME_PROMPT_PREFIX=""
SCM_THEME_PROMPT_SUFFIX=""

SCM_THEME_PROMPT_DIRTY=" ${bold_red}✗${normal}"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓${normal}"

prompt () {
    PS1="${bold_green}\h${normal}:${cyan}\w${normal} [$(scm_prompt_info)] "
}
PS2="└─▪ "
PS3=">> "

PROMPT_COMMAND=prompt
