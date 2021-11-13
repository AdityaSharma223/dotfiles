# name: Gianu
# at: https://github.com/oh-my-fish/theme-gianu
function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function fish_prompt
  set -l cyan (set_color cyan)
  set -l yellow (set_color FFA500)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l green (set_color 90ee90)
  set -l white (set_color -o white)
  set -l purple (set_color A020F0)
  set -l normal (set_color normal)


  set -l cwd $cyan(basename (prompt_pwd))

  if [ (_git_branch_name) ]
    set -l git_branch $green(_git_branch_name)
    set git_info "$normal($green$git_branch"

    if [ (_is_git_dirty) ]
      set -l dirty "$yellow ✗"
      set git_info "$git_info$dirty"
    end

    set git_info "$git_info$normal)"
  end

  echo -n -s $red '[' $yellow (whoami) $green '@' $purple (cat /etc/hostname) ' ' $purple$cwd ''  $git_info $red ']' $normal '$ '
end


# this is the toaster theme at: 
# https://github.com/oh-my-fish/theme-toaster
# set __toaster_color_orange FD971F
# set __toaster_color_blue 6EC9DD
# set __toaster_color_green A6E22E
# set __toaster_color_yellow E6DB7E
# set __toaster_color_pink F92672
# set __toaster_color_grey 554F48
# set __toaster_color_white F1F1F1
# set __toaster_color_purple 9458FF
# set __toaster_color_lilac AE81FF

# function __toaster_color_echo
#   set_color $argv[1]
#   if test (count $argv) -eq 2
#     echo -n $argv[2]
#   end
# end

# function __toaster_current_folder
#   if test $PWD = '/'
#     echo -n '/'
#   else
#     echo -n $PWD | grep -o -E '[^\/]+$'
#   end
# end

# function __toaster_git_status_codes
#   echo (git status --porcelain 2> /dev/null | sed -E 's/(^.{3}).*/\1/' | tr -d ' \n')
# end

# function __toaster_git_branch_name
#   echo (git rev-parse --abbrev-ref HEAD 2> /dev/null)
# end

# function __toaster_rainbow
#   if echo $argv[1] | grep -q -e $argv[3]
#     __toaster_color_echo $argv[2] "彡ミ"
#   end
# end

# function __toaster_git_status_icons
#   set -l git_status (__toaster_git_status_codes)

#   __toaster_rainbow $git_status $__toaster_color_pink 'D'
#   __toaster_rainbow $git_status $__toaster_color_orange 'R'
#   __toaster_rainbow $git_status $__toaster_color_white 'C'
#   __toaster_rainbow $git_status $__toaster_color_green 'A'
#   __toaster_rainbow $git_status $__toaster_color_blue 'U'
#   __toaster_rainbow $git_status $__toaster_color_lilac 'M'
#   __toaster_rainbow $git_status $__toaster_color_grey '?'
# end

# function __toaster_git_status
#   # In git
#   if test -n (__toaster_git_branch_name)

#     __toaster_color_echo $__toaster_color_blue " [git"
#     __toaster_color_echo $__toaster_color_white ":"(__toaster_git_branch_name)"]"

#     if test -n (__toaster_git_status_codes)
#       __toaster_color_echo $__toaster_color_pink ' ●'
#       __toaster_color_echo $__toaster_color_white ' [^._.^]ﾉ'
#       __toaster_git_status_icons
#     else
#       __toaster_color_echo $__toaster_color_green ' ●' 
#     end
#   end
# end

# function fish_prompt
#   __toaster_color_echo $__toaster_color_blue "ツ"
#   __toaster_color_echo $__toaster_color_purple (__toaster_current_folder)
#   # __toaster_color_echo $__toaster_color_blue " 🤯"
#   __toaster_git_status
#   echo
#   __toaster_color_echo $__toaster_color_pink "\$ " 
# end

# task list
