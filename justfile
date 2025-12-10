dotfiles_dir := invocation_directory()
home_dir := env_var("HOME")
config_dir := home_dir + "/.config"

wallpaper:
    ln -sfn {{dotfiles_dir}}/wallpapers/everforest.png {{home_dir}}/Pictures/Wallpapers/current.png

nvim:
    ln -sfn {{dotfiles_dir}}/nvim {{config_dir}}/nvim

vim:
    ln -sfn {{dotfiles_dir}}/vim/.vimrc {{home_dir}}/.vimrc

tmux:
    ln -sfn {{dotfiles_dir}}/tmux {{config_dir}}/tmux

foot:
    ln -sfn {{dotfiles_dir}}/foot {{config_dir}}/foot

fuzzel:
    ln -sfn {{dotfiles_dir}}/fuzzel {{config_dir}}/fuzzel

sway:
    ln -sfn {{dotfiles_dir}}/sway {{config_dir}}/sway

swaylock:
    ln -sfn {{dotfiles_dir}}/swaylock {{config_dir}}/swaylock

waybar:
    ln -sfn {{dotfiles_dir}}/waybar {{config_dir}}/waybar

bash:
    ln -sfn {{dotfiles_dir}}/bash/.bashrc {{home_dir}}/.bashrc
    ln -sfn {{dotfiles_dir}}/bash/.inputrc {{home_dir}}/.inputrc
