# Dracula Theme v1.2.5
#
# https://github.com/dracula/dracula-theme
#
# Copyright 2016, All rights reserved
#
# Code licensed under the MIT license
# http://zenorocha.mit-license.org
#
# @author Zeno Rocha <hi@zenorocha.com>

local ret_status="%(?:%{$fg_bold[green]%}❯ :%{$fg_bold[red]%}❯ )"


function virtualenv_prompt_info(){
  [[ -n ${VIRTUAL_ENV} ]] || return
  echo "${ZSH_THEME_VIRTUALENV_PREFIX:=(}${VIRTUAL_ENV:t}${ZSH_THEME_VIRTUALENV_SUFFIX:=)} "
}

# disables prompt mangling in virtual_env/bin/activate
export VIRTUAL_ENV_DISABLE_PROMPT=1
#
function collapse_pwd {
	echo $(pwd | sed -e "s,^$HOME,~,")
}

PROMPT='%{$FG[248]%}$(virtualenv_prompt_info)%{$reset_color%}%{$fg[blue]%}$(collapse_pwd) $(git_super_status)% ${ret_status}%{$reset_color%}'
RPROMPT=''

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}(%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[magenta]%})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_STAGED=" %{$fg[yellow]%}%{●%G%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{+%G%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND=" %{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD=" %{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[cyan]%}%{+%G%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
