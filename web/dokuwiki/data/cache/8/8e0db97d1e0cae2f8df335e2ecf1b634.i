a:87:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:3:"Zsh";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:20;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"- user-friendly POSIX-compliant interactive command interpreter (shell).";}i:2;i:22;}i:6;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:94;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:96;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:98;}i:9;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Installation";i:1;i:2;i:2;i:98;}i:2;i:98;}i:10;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:98;}i:11;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:123;}i:12;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:123;}i:13;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:123;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"Debian:";}i:2;i:127;}i:15;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:134;}i:16;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:85:"echo ${ZSH_VERSION} || apt install -y zsh zsh-syntax-highlighting zsh-autosuggestions";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:87:"# echo ${ZSH_VERSION} || apt install -y zsh zsh-syntax-highlighting zsh-autosuggestions";}i:2;i:140;}i:17;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:227;}i:18;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:234;}i:19;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:234;}i:20;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:234;}i:21;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:236;}i:22;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Configuration";i:1;i:2;i:2;i:236;}i:2;i:236;}i:23;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:236;}i:24;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:262;}i:25;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:262;}i:26;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:262;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"Zsh config file:";}i:2;i:266;}i:28;a:3:{i:0;s:4:"file";i:1;a:3:{i:0;s:20065:"
## AUTHOR:       AISK11
## LOCATION:     ~/.zshrc (0644)
## DEPENDENCIES: zsh [zsh-syntax-highlighting] [zsh-autosuggestions]
## DESCRIPTION:  Interactive zsh config file.

################################################################################
##                                 INVOCATION                                 ##
################################################################################
##        +-----------------+  +--------------------+
## START->| /etc/zsh/zshenv |->| ${ZDOTDIR}/.zshenv |
##        +-----------------+  +--------------------+
##                                                  |
## +------------------------------------------------+
## |
## |                +-------------------+  +----------------------+
## LOGIN SHELL? Y ->| /etc/zsh/zprofile |->| ${ZDOTDIR}/.zprofile |
## N                +-------------------+  +----------------------+
## |                                                              |
## +--------------------------------------------------------------+
## |
## |                      +----------------+  +-------------------+
## INTERACTIVE SHELL? Y ->| /etc/zsh/zshrc |->| ${ZDOTDIR}/.zshrc |
## N                      +----------------+  +-------------------+
## |                                                              |
## +--------------------------------------------------------------+
## |
## |                +-----------------+  +--------------------+
## LOGIN SHELL? Y ->| /etc/zsh/zlogin |->| ${ZDOTDIR}/.zlogin |
## N                +-----------------+  +--------------------+
## |                                                          |
## +----------------------------------------------------------+
## |
## EXIT CALL
## |
## |                +---------------------+  +------------------+
## LOGIN SHELL? Y ->| ${ZDOTDIR}/.zlogout |->| /etc/zsh/zlogout |
## N                +---------------------+  +------------------+
## |                                                            |
## +------------------------------------------------------------+
## |
## END

################################################################################
##                               SHELL OPTIONS                                ##
################################################################################
## Changing directories.
setopt   AUTO_CD
unsetopt CDABLE_VARS

## Completion.
unsetopt AUTO_LIST
unsetopt AUTO_PARAM_KEYS
unsetopt MENU_COMPLETE

## History.
setopt   HIST_EXPIRE_DUPS_FIRST
setopt   HIST_FCNTL_LOCK
setopt   HIST_FIND_NO_DUPS
setopt   HIST_IGNORE_ALL_DUPS
setopt   HIST_IGNORE_SPACE
setopt   HIST_REDUCE_BLANKS
setopt   HIST_SAVE_NO_DUPS
setopt   HIST_VERIFY
setopt   SHARE_HISTORY

## Input/Output.
unsetopt HASH_CMDS
setopt   INTERACTIVE_COMMENTS

## Shell emulation.
setopt   BSD_ECHO
setopt   SH_WORD_SPLIT

## Zle.
unsetopt BEEP
setopt   VI
setopt   NO_NOMATCH

################################################################################
##                                    KEYS                                    ##
################################################################################
## Create a zkbd compatible hash ('https://wiki.archlinux.org/title/zsh#Key_bindings').
typeset -g -A key
key[Backspace]="${terminfo[kbs]}"
key[Insert]="${terminfo[kich1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Delete]="${terminfo[kdch1]}"
key[Shift-Tab]="${terminfo[kcbt]}"

## Setup keys.
[ -n "${key[Backspace]}" ] && bindkey -- "${key[Backspace]}" backward-delete-char
[ -n "${key[Insert]}"    ] && bindkey -- "${key[Insert]}"    overwrite-mode
[ -n "${key[Up]}"        ] && bindkey -- "${key[Up]}"        up-line-or-history
[ -n "${key[Down]}"      ] && bindkey -- "${key[Down]}"      down-line-or-history
[ -n "${key[Left]}"      ] && bindkey -- "${key[Left]}"      backward-char
[ -n "${key[Right]}"     ] && bindkey -- "${key[Right]}"     forward-char
[ -n "${key[Home]}"      ] && bindkey -- "${key[Home]}"      beginning-of-line
[ -n "${key[End]}"       ] && bindkey -- "${key[End]}"       end-of-line
[ -n "${key[Delete]}"    ] && bindkey -- "${key[Delete]}"    delete-char
[ -n "${key[Shift-Tab]}" ] && bindkey -- "${key[Shift-Tab]}" reverse-menu-complete

################################################################################
##                                 VARIABLES                                  ##
################################################################################
########################################
##          SHELL VARIABLES           ##
########################################
## Default search path for executables.
export PATH=''
[ ! -L "/sbin" ]            && PATH="${PATH}:/sbin"
[ ! -L "/bin" ]             && PATH="${PATH}:/bin"
[ ! -L "/usr/sbin" ]        && PATH="${PATH}:/usr/sbin"
[ ! -L "/usr/bin" ]         && PATH="${PATH}:/usr/bin"
[ ! -L "/usr/local/sbin" ]  && PATH="${PATH}:/usr/local/sbin"
[ ! -L "/usr/local/bin" ]   && PATH="${PATH}:/usr/local/bin"
[ -d "${HOME}/.local/bin" ] && PATH="${PATH}:${HOME}/.local/bin"
[ -d "${HOME}/bin" ]        && PATH="${PATH}:${HOME}/bin"
PATH="${PATH#:}"

## History.
export HISTSIZE='5000'
export SAVEHIST="${HISTSIZE}"
export HISTFILE="${HOME}/.zsh_history"

## Command prompts.
export PROMPT_EOL_MARK='%B%S%#%s%b'
export PS1='%B%(!.%F{red}.%F{green})%n%F{yellow}@%(!.%F{red}.%F{green})%m %F{blue}%~ %(?.%F{green}.%F{red})%(!.#.$) %f%b'
export PS2='> '
export PS4='+ '

## Keyboard.
export KEYTIMEOUT='40'

## Locale.
export LANG='C.UTF-8'

########################################
##          DEFAULT PROGRAMS          ##
########################################
## Color mode.
#export COLOR_MODE='always'
export COLOR_MODE='auto'

## Text editor.
if [ -n "$(command -vp nvim)" ]; then
    export VISUAL='nvim'
elif [ -n "$(command -vp vim)" ]; then
    export VISUAL='vim'
elif [ -n "$(command -vp vi)" ]; then
    export VISUAL='vi'
else
    export VISUAL=''
fi
export EDITOR="${VISUAL}"

########################################
##         PROGRAM VARIABLES          ##
########################################
## "$(less)".
export LESS='-R --use-color -Ddr$Dub$DSky$DPkb$ -i --follow-name --file-size -Ps[File\: "?f%f:STDIN." | Lines\: %lt-%lb/%L (?e100:%Pb.\%)]$'
export LESSHISTFILE='/dev/null'
export LESSHISTSIZE='0'

## "$(man)".
if [ -n "$(command -vp less)" ]; then
    export PAGER='less'
else
    export PAGER=''
fi
export MANPAGER="${PAGER}"
export MANLESS='[Manual\: \$MAN_PN\] | Lines\: %lt-%lb/%L (?e100:%Pb.\%)]$'

################################################################################
##                                  ALIASES                                   ##
################################################################################
########################################
##               SET UP               ##
########################################
## Unalias all previous aliases.
unalias -a

########################################
##              COMMANDS              ##
########################################
## Kernel.
alias dmesg='\dmesg --color=${COLOR_MODE}'

## System.
alias history='\history 0'
alias date='\date "+%Y-%m-%d %H:%M:%S %Z"'
alias pstree='\pstree -C age -h'
alias kill='\kill -9'
alias killall='\killall -9'

## Filesystem.
alias mkdir='\mkdir -p'
alias ls='\ls --color=${COLOR_MODE} -F --group-directories-first'
alias tree='\tree -C'
alias file='\file -p'

## Text reading.
alias grep='\grep --color=${COLOR_MODE}'
alias egrep='\grep -E --color=${COLOR_MODE}'
alias diff='\diff --color=${COLOR_MODE} -s'
alias nl='\nl -s " "'

## Multimedia.
alias mpv='\mpv --audio-display=no'
alias yt-dlp='\yt-dlp -ix --progress -f bestaudio --audio-quality 0 --audio-format mp3 -o "%(title)s.%(ext)s"'
alias mp3gain='\mp3gain -r -k'

## Network.
alias ip='\ip --color=${COLOR_MODE}'
alias mtr='\mtr -t'
alias nmap='\nmap -T4'

########################################
##            ALTERNATIVES            ##
########################################
## Filesystem.
if [ -n "$(command -vp lsd)" ]; then
    alias ls='\lsd --color=${COLOR_MODE} -F --group-dirs first --icon never'
fi

## Text reading.
if [ -z "$(command -vp xxd)" ]; then
    alias xxd='\hexdump -C'
fi

## Text editing.
if [ -n "$(command -vp nvim)" ]; then
    alias vim='\nvim'
    alias vi='\nvim'
elif [ -n "$(command -vp vim)" ]; then
    alias nvim='\vim'
    alias vi='\vim'
elif [ -n "$(command -vp vi)" ]; then
    alias nvim='\vi'
    alias vim='\vi'
fi

## Security.
if [ -n "$(command -vp doas)" ]; then
    alias sudo='\doas'
elif [ -n "$(command -vp sudo)" ]; then
    alias doas='\sudo'
fi

########################################
##               CUSTOM               ##
########################################
## System.
alias idate='\date "+%Y-%m-%dT%H:%M:%S%z"'
alias pname='\ps -o cmd -h -p'

## Filesystem.
alias cpf='\cp -rTd --'
alias path='\realpath -s'
alias linkpath='\readlink -f'

## Gaming.
alias nvrun='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia'

################################################################################
##                                 FUNCTIONS                                  ##
################################################################################
## Filesystem.
getshell() {
    SHELLFILE="$(\ps -o cmd -h -p ${$} | \cut -d " " -f 1)"
    [ "${SHELLFILE#-}" != "${SHELLFILE}" ] && ISLOGIN='-' || ISLOGIN=''
    echo "${ISLOGIN}$(\basename $(\readlink -f "${SHELLFILE#-}"))"
}

################################################################################
##                                 EXTENSIONS                                 ##
################################################################################
########################################
##               CURSOR               ##
########################################
## Source: 'https://orelfichman.com/blog/terminal-escape-codes-are-awesome' and
## 'https://www.reddit.com/r/vim/comments/mxhcl4/setting_cursor_indicator_for_zshvi_mode_in'.
#echo -ne '\e[0 q' ## Reset to default.
#echo -ne '\e[1 q' ## Blinking block.
#echo -ne '\e[2 q' ## Steady block (default).
#echo -ne '\e[3 q' ## Blinking underscore.
#echo -ne '\e[4 q' ## Steady underscore.
echo -ne '\e[5 q' ## Blinking bar.
#echo -ne '\e[6 q' ## Steady bar.

## Executed every time "${KEYMAP}" changes (vicmd,viins...).
zle-keymap-select () {
    case "${KEYMAP}" in
        vicmd)
            echo -ne '\e[1 q' ## Blinking block.
            ;;
        *)
            echo -ne '\e[5 q' ## Blinking bar.
            ;;
    esac
}
zle -N zle-keymap-select

########################################
##        SYNTAX HIGHLIGHTING         ##
########################################
## Docs: 'https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md'.
## Enable syntax highlighting.
if [ -f '/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' ]; then
    . /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

    ## Color highligters.
    ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor)

    ## Colors (main).
    ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red'
    ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=yellow'
    ZSH_HIGHLIGHT_STYLES[alias]='fg=green,underline'
    ZSH_HIGHLIGHT_STYLES[suffix-alias]='none'
    ZSH_HIGHLIGHT_STYLES[global-alias]='none'
    ZSH_HIGHLIGHT_STYLES[builtin]='fg=yellow'
    ZSH_HIGHLIGHT_STYLES[function]='fg=green,underline'
    ZSH_HIGHLIGHT_STYLES[command]='fg=green'
    ZSH_HIGHLIGHT_STYLES[precommand]='fg=yellow,underline'
    ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=yellow'
    ZSH_HIGHLIGHT_STYLES[hashed-command]='none'
    ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=blue'
    ZSH_HIGHLIGHT_STYLES[path]='fg=white,underline'
    ZSH_HIGHLIGHT_STYLES[path-separator]='none'
    ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='none'
    ZSH_HIGHLIGHT_STYLES[globbing]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=cyan'
    ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=cyan'
    ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=red'
    ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='none'
    ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=yellow'
    ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=red'
    ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=yellow'
    ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=red'
    ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='none'
    ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='none'
    ZSH_HIGHLIGHT_STYLES[rc-quote]='none'
    ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='none'
    ZSH_HIGHLIGHT_STYLES[assign]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[redirection]='fg=yellow'
    ZSH_HIGHLIGHT_STYLES[comment]='fg=black,bold'
    ZSH_HIGHLIGHT_STYLES[named-fd]='fg=yellow'
    ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=yellow'
    ZSH_HIGHLIGHT_STYLES[arg0]='none'
    ZSH_HIGHLIGHT_STYLES[default]='fg=white'

    ## Colors (brackets).
    ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=red'
    ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]='standout'
    ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=magenta'
    ZSH_HIGHLIGHT_STYLES[bracket-level-5]='fg=magenta'

    ## Colors (cursor).
    ZSH_HIGHLIGHT_STYLES[cursor]='bold'
fi

########################################
##         HISTORY COMPLETION         ##
########################################
## Docs: 'https://github.com/zsh-users/zsh-autosuggestions'.
## Show history commands to match completion in ZLE.
if [ -f '/usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh' ]; then
    . /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

    ## Set autosuggestion color.
    export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=black,bold,underline'
fi

########################################
##          AUTO COMPLETION           ##
########################################
## Load autocompletion.
autoload -Uz compinit

## Menu selection.
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

########################################
##     COMMAND NOT FOUND HANDLER      ##
########################################
## ANSI escape code colors (https://en.wikipedia.org/wiki/ANSI_escape_code).
export ANSI_BLACK="\e[30m"
export ANSI_RED="\e[31m"
export ANSI_GREEN="\e[32m"
export ANSI_YELLOW="\e[33m"
export ANSI_BLUE="\e[34m"
export ANSI_MAGENTA="\e[35m"
export ANSI_CYAN="\e[36m"
export ANSI_WHITE="\e[37m"
export ANSI_RESET="\e[0m"

## How to handle, when command does not exists.
if [ -r '/etc/zsh_command_not_found' ]; then
    . /etc/zsh_command_not_found
else
    command_not_found_handler () {
        echo -e "${ANSI_RED}Command '${0}' not found!${ANSI_RESET}"
        return 127
    }
fi

########################################
##          ALIAS EXPANSION           ##
########################################
## Source: 'https://dev.to/frost/fish-style-abbreviations-in-zsh-40aa'.

################################################################################
##                                  EXECUTE                                   ##
################################################################################
########################################
##            TTY SPECIFIC            ##
########################################
if [ "${TERM}" = "linux" ]; then
    ## Load unicode font support.
    \unicode_start

    ## Set PSFU font manually.
    [ -f '/usr/share/consolefonts/Uni1-Fixed16.psf.gz' ] && \
        \setfont Uni1-Fixed16

    ## Set up numlock, capslock and scrolllock.
    \setleds -D +num
    \setleds -D -caps
    \setleds -D -scroll

    ## Terminal colors.
    THEME=''
    #THEME='1337'
    #THEME='github-dark'

    if [ "${THEME}" = '1337' ]; then
        COLOR='00ff00'
        THEME_COLOR_CLI_0='000000' ## Black
        THEME_COLOR_CLI_1="${COLOR}" ## Red
        THEME_COLOR_CLI_2="${COLOR}" ## Green
        THEME_COLOR_CLI_3="${COLOR}" ## Yellow
        THEME_COLOR_CLI_4="${COLOR}" ## Blue
        THEME_COLOR_CLI_5="${COLOR}" ## Magenta
        THEME_COLOR_CLI_6="${COLOR}" ## Cyan
        THEME_COLOR_CLI_7="${COLOR}" ## White
        THEME_COLOR_CLI_8="${COLOR}" ## Bright Black
        THEME_COLOR_CLI_9="${COLOR}" ## Bright Red
        THEME_COLOR_CLI_A="${COLOR}" ## Bright Green
        THEME_COLOR_CLI_B="${COLOR}" ## Bright Yellow
        THEME_COLOR_CLI_C="${COLOR}" ## Bright Blue
        THEME_COLOR_CLI_D="${COLOR}" ## Bright Magenta
        THEME_COLOR_CLI_E="${COLOR}" ## Bright Cyan
        THEME_COLOR_CLI_F="${COLOR}" ## Bright White
    elif [ "${THEME}" = 'github-dark' ]; then
        THEME_COLOR_CLI_0='0d1117' ## Black
        THEME_COLOR_CLI_1='fa7970' ## Red
        THEME_COLOR_CLI_2='7ce38b' ## Green
        THEME_COLOR_CLI_3='faa356' ## Yellow
        THEME_COLOR_CLI_4='77bdfb' ## Blue
        THEME_COLOR_CLI_5='cea5fb' ## Magenta
        THEME_COLOR_CLI_6='a2d2fb' ## Cyan
        THEME_COLOR_CLI_7='ecf2f8' ## White
        THEME_COLOR_CLI_8='89929b' ## Bright Black
        THEME_COLOR_CLI_9='fa7970' ## Bright Red
        THEME_COLOR_CLI_A='7ce38b' ## Bright Green
        THEME_COLOR_CLI_B='faa356' ## Bright Yellow
        THEME_COLOR_CLI_C='77bdfb' ## Bright Blue
        THEME_COLOR_CLI_D='cea5fb' ## Bright Magenta
        THEME_COLOR_CLI_E='a2d2fb' ## Bright Cyan
        THEME_COLOR_CLI_F='ffffff' ## Bright White
    fi

    if [ -n "${THEME}" ]; then
        echo -en "\033]P0${THEME_COLOR_CLI_0}" ## Black
        echo -en "\033]P1${THEME_COLOR_CLI_1}" ## Red
        echo -en "\033]P2${THEME_COLOR_CLI_2}" ## Green
        echo -en "\033]P3${THEME_COLOR_CLI_3}" ## Yellow
        echo -en "\033]P4${THEME_COLOR_CLI_4}" ## Blue
        echo -en "\033]P5${THEME_COLOR_CLI_5}" ## Magenta
        echo -en "\033]P6${THEME_COLOR_CLI_6}" ## Cyan
        echo -en "\033]P7${THEME_COLOR_CLI_7}" ## White
        echo -en "\033]P8${THEME_COLOR_CLI_8}" ## Bright Black
        echo -en "\033]P9${THEME_COLOR_CLI_9}" ## Bright Red
        echo -en "\033]PA${THEME_COLOR_CLI_A}" ## Bright Green
        echo -en "\033]PB${THEME_COLOR_CLI_B}" ## Bright Yellow
        echo -en "\033]PC${THEME_COLOR_CLI_C}" ## Bright Blue
        echo -en "\033]PD${THEME_COLOR_CLI_D}" ## Bright Magenta
        echo -en "\033]PE${THEME_COLOR_CLI_E}" ## Bright Cyan
        echo -en "\033]PF${THEME_COLOR_CLI_F}" ## Bright White
    fi

    ## Unset temporary (non-exported) variables.
    unset THEME THEME_COLOR_CLI_0 THEME_COLOR_CLI_1 THEME_COLOR_CLI_2 \
    THEME_COLOR_CLI_3 THEME_COLOR_CLI_4 THEME_COLOR_CLI_5 THEME_COLOR_CLI_6 \
    THEME_COLOR_CLI_7 THEME_COLOR_CLI_8 THEME_COLOR_CLI_9 THEME_COLOR_CLI_A \
    THEME_COLOR_CLI_B THEME_COLOR_CLI_C THEME_COLOR_CLI_D THEME_COLOR_CLI_E \
    THEME_COLOR_CLI_F
fi

########################################
##              GENERAL               ##
########################################
## Set tab width to 4 (default: 8).
\tabs 4

## Security clear.
\clear
";i:1;s:4:"text";i:2;s:8:"~/.zshrc";}i:2;i:287;}i:29;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:20374;}i:30;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:20374;}i:31;a:3:{i:0;s:13:"listitem_open";i:1;a:2:{i:0;i:1;i:1;i:1;}i:2;i:20374;}i:32;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:20374;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"Set Zsh as login shell:";}i:2;i:20378;}i:34;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:20401;}i:35;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:20401;}i:36;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:2;}i:2;i:20401;}i:37;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:20401;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"By root:";}i:2;i:20407;}i:39;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:20415;}i:40;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:1:{i:0;a:3:{i:0;s:2:"# ";i:1;s:35:"usermod -s $(command -v zsh) <USER>";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:37:"# usermod -s $(command -v zsh) <USER>";}i:2;i:20421;}i:41;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:20458;}i:42;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:20465;}i:43;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:20465;}i:44;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:2;}i:2;i:20465;}i:45;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:20465;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"By user:";}i:2;i:20471;}i:47;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:1;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:1;i:3;s:6:"<cli>
";}i:2;i:20479;}i:48;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:3;i:1;a:2:{i:0;a:3:{i:0;s:2:"$ ";i:1;s:25:"chsh -s $(command -v zsh)";i:2;s:0:"";}i:1;a:3:{i:0;s:2:"> ";i:1;s:15:"<USER-PASSWORD>";i:2;s:0:"";}}i:2;b:0;i:3;s:0:"";}i:2;i:3;i:3;s:45:"$ chsh -s $(command -v zsh)
> <USER-PASSWORD>";}i:2;i:20485;}i:49;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:3:"cli";i:1;a:4:{i:0;i:4;i:1;i:0;i:2;b:0;i:3;s:0:"";}i:2;i:4;i:3;s:7:"
</cli>";}i:2;i:20530;}i:50;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:20537;}i:51;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:20537;}i:52;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:20537;}i:53;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:20537;}i:54;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:20537;}i:55;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:20539;}i:56;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"Resources";i:1;i:2;i:2;i:20539;}i:2;i:20539;}i:57;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:20539;}i:58;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:20561;}i:59;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:20561;}i:60;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:20561;}i:61;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:19:"https://www.zsh.org";i:1;s:17:"Zsh Official Site";}i:2;i:20565;}i:62;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:20606;}i:63;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:20606;}i:64;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:20606;}i:65;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:20606;}i:66;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:32:"https://github.com/zsh-users/zsh";i:1;s:22:"Zsh GitHub Source Code";}i:2;i:20610;}i:67;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:20669;}i:68;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:20669;}i:69;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:20669;}i:70;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:20669;}i:71;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:36:"https://wiki.archlinux.org/title/zsh";i:1;s:14:"ArchWiki - Zsh";}i:2;i:20673;}i:72;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:20728;}i:73;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:20728;}i:74;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:20728;}i:75;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:20728;}i:76;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:32:"https://wiki.gentoo.org/wiki/Zsh";i:1;s:16:"GentooWiki - Zsh";}i:2;i:20732;}i:77;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:20785;}i:78;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:20785;}i:79;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:20785;}i:80;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:20785;}i:81;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:27:"https://wiki.debian.org/Zsh";i:1;s:16:"DebianWiki - Zsh";}i:2;i:20789;}i:82;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:20837;}i:83;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:20837;}i:84;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:20837;}i:85;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:20837;}i:86;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:20837;}}