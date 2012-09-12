# OSX specific cusomizations go here
# This file is version controlled; to make local changes, add them to either:
# - Your user specific file (~/.config/fish/<username>.fish)
# - Your host specific file (~/.config/fish/<hostname>.fish)

# TextMate and Sublime Text install to /usr/bin, but let's check /usr/local/bin and ~/.bin too
for mate in subl mate
    for bin in /usr/local/bin /usr/bin
        if test -z "$EDITOR" -a -f "$bin/$mate"
            set -x EDITOR "$bin/$mate -w"
        end
    end
end


set BROWSER open
