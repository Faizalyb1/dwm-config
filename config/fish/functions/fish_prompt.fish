function fish_prompt
    set_color "purple"
    echo -n (basename $PWD)
    set_color normal
    echo -n ' > '
end
