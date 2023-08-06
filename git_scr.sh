#!/usr/bin/env bash
func() {
    if [ -z "$1" ]; then
        echo "Please provide a commit message."
        return 1
    fi

    MSG="$1"
    git commit -am "$MSG" &&  git push

}


func "$@"

