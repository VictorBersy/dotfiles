function reset_chezmoi --description 'Reset chezmoi config'
  chezmoi purge && chezmoi init https://github.com/VictorBersy/dotfiles.git --apply --force
end
