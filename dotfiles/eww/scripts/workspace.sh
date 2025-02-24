#! /bin/sh

workspaces() {
    focused=$(hyprctl monitors -j | jq '.[0].activeWorkspace.id')
    w1="1"
    w2="2"
    w3="3"
    w4="4"
    w5="5"
    w6="6"
    w7="7"
    w8="8"
    w9="9"
    if [ $focused == $w1 ]; then
        w1="(1)"
    elif [ $focused == $w2 ]; then
        w2="(2)"
    elif [ $focused == $w3 ]; then
        w3="(3)"
    elif [ $focused == $w4 ]; then
        w4="(4)"
    elif [ $focused == $w5 ]; then
        w5="(5)"
    elif [ $focused == $w6 ]; then
        w6="(6)"
    elif [ $focused == $w7 ]; then
        w7="(7)"
    elif [ $focused == $w8 ]; then
        w8="(8)"
    elif [ $focused == $w9 ]; then
        w9="(9)"
    fi

    echo "
    (box 
        :class \"module\"
        :class \"workspaces_class\"
        :halign \"center\"
        :orientation \"h\"
        :valign \"center\"
        :space-evenly false
        :spacing 3
        (label :text \"$w1\")
        (label :text \"$w2\")
        (label :text \"$w3\")
        (label :text \"$w4\")
        (label :text \"$w5\")
        (label :text \"$w6\")
        (label :text \"$w7\")
        (label :text \"$w8\")
        (label :text \"$w9\")
    )"
}

workspaces

