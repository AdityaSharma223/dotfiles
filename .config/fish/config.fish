if status is-interactive
    fish_vi_key_bindings
    # fish_default_key_bindings
    set fish_greeting
    set -gx EDITOR nvim
    abbr --add v nvim
    abbr --add alaconfig nvim ~/.config/alacritty/alacritty.yml
    abbr --add fishconfig nvim ~/.config/fish/config.fish
    abbr --add fishprompt nvim ~/.config/fish/functions/fish_prompt.fish
    abbr --add nvimconfig nvim ~/.config/nvim/init.lua
    abbr --add qtileconfig nvim ~/.config/qtile/config.py
    abbr --add qtilebindings nvim ~/.config/qtile/sxhkd/sxhkdrc
    abbr --add gt xclip -sel c ~/main/github/githubtoken
end
