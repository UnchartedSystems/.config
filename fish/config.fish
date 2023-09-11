if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_function_path $fish_function_path /home/dan/.workbench/plugin-foreign-env/functions

fenv source ~/.profile

starship init fish | source
