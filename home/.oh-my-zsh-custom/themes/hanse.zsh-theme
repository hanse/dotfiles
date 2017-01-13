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

function collapse_pwd {
	echo $(pwd | sed -e "s,^$HOME,~,")
}

PROMPT='%{$fg[blue]%}$(collapse_pwd) $(git_prompt_info)% ${ret_status}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_CLEAN=") "
ZSH_THEME_GIT_PROMPT_DIRTY=" *) "
ZSH_THEME_GIT_PROMPT_ADDED=" +) "
ZSH_THEME_GIT_PROMPT_UNTRACKED=" +) "
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
