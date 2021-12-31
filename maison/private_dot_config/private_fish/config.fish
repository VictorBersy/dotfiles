# Install Fisher and my packages
if status is-interactive && ! functions --query fisher
    curl --silent --location https://git.io/fisher | source && fisher update
end

set -g theme_nerd_fonts yes
set -g fish_prompt_pwd_dir_length 1
set -g theme_title_display_process yes
set -gx PROJECT_PATHS ~/Code/Selectra-Dev
set -g theme_color_scheme dracula
set -g theme_display_k8s_context yes
