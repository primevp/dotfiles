#!/usr/bin/env bash
script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
run(){
    param_count="$#"
    for param in "$@"; do
        ((line=line+1))
        printf "%s\n" "[$line/$param_count] $param"
        stow --stow "$param" --target=$HOME --dir=$script_dir
    done
}
run aria zathura Xresources fish foot tmux lf
