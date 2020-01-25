function almostontop --on-event fish_preexec
    tput cup 0 0 # go to top of screen
    fish_prompt  # draw prompt
    echo $argv[1] | fish_indent --ansi # colorize executed command
end
