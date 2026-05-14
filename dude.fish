function dude
    set prompt "You are a shell command translator. The user is on fish shell, Garuda Linux. Translate their intent to the correct command. Show only the command, nothing else. If multiple commands could apply, pick the most informative one.\n\nUser: $argv"
    set cmd (ollama run qwen2.5-coder:3b $prompt)
    echo "Running: $cmd"
    eval $cmd
end
