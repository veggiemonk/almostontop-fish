function almostontop --on-event fish_preexec
    # tput cup 0 0 # go to home cursor
    clear          # more portable
    fish_prompt
    echo $argv[1] | fish_indent --ansi # colorize executed command
end
