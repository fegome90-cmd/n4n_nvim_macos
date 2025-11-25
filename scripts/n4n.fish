function n4n --description "Launch Neovim with N4N configuration"
    # Set NVIM_APPNAME to isolate configuration
    set -x NVIM_APPNAME nvim-n4n
    
    # Launch Neovim with arguments
    nvim $argv
end
