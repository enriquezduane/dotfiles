dotfiles_dir := invocation_directory()
home_dir := env_var("HOME")
config_dir := home_dir + "/.config"

nvim:
    ln -sfn {{dotfiles_dir}}/nvim {{config_dir}}/nvim

vim:
    ln -sfn {{dotfiles_dir}}/vim/.vimrc {{home_dir}}/.vimrc

tmux:
    ln -sfn {{dotfiles_dir}}/tmux {{config_dir}}/tmux

foot:
    ln -sfn {{dotfiles_dir}}/foot {{config_dir}}/foot

bash:
    ln -sfn {{dotfiles_dir}}/bash/.bashrc {{home_dir}}/.bashrc
    ln -sfn {{dotfiles_dir}}/bash/.inputrc {{home_dir}}/.inputrc
