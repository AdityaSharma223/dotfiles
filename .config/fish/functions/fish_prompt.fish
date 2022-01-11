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
