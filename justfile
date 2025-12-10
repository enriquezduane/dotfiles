dotfiles_dir := invocation_directory()
home_dir := env_var("HOME")
config_dir := home_dir + "/.config"

nvim:
    mkdir -p {{config_dir}}
    ln -sfn {{dotfiles_dir}}/nvim {{config_dir}}/nvim
    echo "nvim linked to {{config_dir}}/nvim"

tmux:
    mkdir -p {{config_dir}}
    ln -sfn {{dotfiles_dir}}/tmux {{config_dir}}/tmux
    echo "tmux linked to {{config_dir}}/tmux"

foot:
    mkdir -p {{config_dir}}
    ln -sfn {{dotfiles_dir}}/foot {{config_dir}}/foot
    echo "foot linked to {{config_dir}}/foot"

bash:
    ln -sfn {{dotfiles_dir}}/bash/.bashrc {{home_dir}}/.bashrc
    ln -sfn {{dotfiles_dir}}/bash/.inputrc {{home_dir}}/.inputrc
    echo "bashrc linked to {{home_dir}}/.bashrc"
    echo "inputrc linked to {{home_dir}}/.inputrc"
