if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_function_path $fish_function_path /home/dan/.workbench/plugin-foreign-env/functions

# no fish shell:
# set -g fish_greeting
function fish_greeting
    echo Welcome back to fish,  $USER(set_color grey; echo @)(set_color brgreen; echo $hostname)
    echo (set_color brwhite; echo Type) (set_color brblue; echo help)(set_color brwhite; echo) for the online docs
end

# requires fenv!
fenv source ~/.profile

starship init fish | source
