#! /bin/sh

workspaces() {
    focused=$(($(hyprctl monitors -j | jq '.[0].activeWorkspace.id')))

    o1=""
    o2=""
    o3=""
    o4=""
    o5=""
    o6=""
    o7=""
    o8=""
    o9=""

    if [ $focused == 1 ]; then
        o1=""
    elif [ $focused == 2 ]; then
        o2=""
    elif [ $focused == 3 ]; then
        o3=""
    elif [ $focused == 4 ]; then
        o4=""
    elif [ $focused == 5 ]; then
        o5=""
    elif [ $focused == 6 ]; then
        o6=""
    elif [ $focused == 7 ]; then
        o7=""
    elif [ $focused == 8 ]; then
        o8=""
    elif [ $focused == 9 ]; then
        o9=""
    fi

    echo "
    (box 
        :halign \"center\"
        :orientation \"h\"
        :space-evenly false
        :spacing 15
        (box
            :orientation \"v\"
            :valign \"center\"
            :space-evenly false
            (button
            :onclick \"hyprctl dispatch workspace 1 && eww -c /etc/nixos/dotfiles/eww update workspaces=\\\"\$(/etc/nixos/dotfiles/eww/scripts/workspace.sh)\\\"\"
                (label :text \"$o1\")
            )
        )   
        (box
            :orientation \"v\"
            :valign \"center\"
            :space-evenly false
            (button
                :onclick \"hyprctl dispatch workspace 2 && eww -c /etc/nixos/dotfiles/eww update workspaces=\\\"\$(/etc/nixos/dotfiles/eww/scripts/workspace.sh)\\\"\"
                (label :text \"$o2\")
            )
        )   
        (box
            :orientation \"v\"
            :valign \"center\"
            :space-evenly false
            (button
                :onclick \"hyprctl dispatch workspace 3 && eww -c /etc/nixos/dotfiles/eww update workspaces=\\\"\$(/etc/nixos/dotfiles/eww/scripts/workspace.sh)\\\"\"
                (label :text \"$o3\")
            )
        )   
        (box
            :orientation \"v\"
            :valign \"center\"
            :space-evenly false
            (button
                :onclick \"hyprctl dispatch workspace 4 && eww -c /etc/nixos/dotfiles/eww update workspaces=\\\"\$(/etc/nixos/dotfiles/eww/scripts/workspace.sh)\\\"\"
                (label :text \"$o4\")
            )
        )   
        (box
            :orientation \"v\"
            :valign \"center\"
            :space-evenly false
            (button
                :onclick \"hyprctl dispatch workspace 5 && eww -c /etc/nixos/dotfiles/eww update workspaces=\\\"\$(/etc/nixos/dotfiles/eww/scripts/workspace.sh)\\\"\"
                (label :text \"$o5\")
            )
        )
        (box
            :orientation \"v\"
            :valign \"center\"
            :space-evenly false
            (button
                :onclick \"hyprctl dispatch workspace 6 && eww -c /etc/nixos/dotfiles/eww update workspaces=\\\"\$(/etc/nixos/dotfiles/eww/scripts/workspace.sh)\\\"\"
                (label :text \"$o6\")
            )
        )   
        (box
            :orientation \"v\"
            :valign \"center\"
            :space-evenly false
            (button
                :onclick \"hyprctl dispatch workspace 7 && eww -c /etc/nixos/dotfiles/eww update workspaces=\\\"\$(/etc/nixos/dotfiles/eww/scripts/workspace.sh)\\\"\"
                (label :text \"$o7\")
            )
        )   
        (box
            :orientation \"v\"
            :valign \"center\"
            :space-evenly false
            (button
                :onclick \"hyprctl dispatch workspace 8 && eww -c /etc/nixos/dotfiles/eww update workspaces=\\\"\$(/etc/nixos/dotfiles/eww/scripts/workspace.sh)\\\"\"
                (label :text \"$o8\")
            )
        )   
        (box
            :orientation \"v\"
            :valign \"center\"
            :space-evenly false
            (button
                :onclick \"hyprctl dispatch workspace 9 && eww -c /etc/nixos/dotfiles/eww update workspaces=\\\"\$(/etc/nixos/dotfiles/eww/scripts/workspace.sh)\\\"\"
                (label :text \"$o9\")
            )
        )   
    )"
}

workspaces
