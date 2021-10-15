if status is-interactive
    # use vim keybindings lol 
    fish_vi_key_bindings
    set fish_greeting
    set -gx EDITOR nvim
    abbr --add cpy "touch a.py && cat ~/main/Templates/a.py >> a.py && nvim a.py"
    abbr --add v nvim 
    abbr --add alaconfig nvim ~/.config/alacritty/alacritty.yml
    abbr --add fishconfig nvim ~/.config/fish/config.fish
    abbr --add fishprompt nvim ~/.config/fish/functions/fish_prompt.fish
    abbr --add nvimconfig nvim ~/.config/nvim/init.vim
    abbr --add qtileconfig nvim ~/.config/qtile/config.py
    abbr --add qtilebindings nvim ~/.config/qtile/sxhkd/sxhkdrc
    abbr --add gt xclip -sel c ~/main/github/githubtoken
end

# neofetch
