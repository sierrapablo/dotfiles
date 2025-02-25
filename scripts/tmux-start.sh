#!/bin/sh

ADJECTIVES=("brave" "quick" "lazy" "bold" "happy" "fierce" "silent" "mighty" "eager" "wild")
NOUNS=("lion" "tiger" "bear" "eagle" "panda" "wolf" "shark" "whale" "panther" "hawk")

ADJECTIVE=${ADJECTIVES[$RANDOM % ${#ADJECTIVES[@]}]}
NOUN=${NOUNS[$RANDOM % ${#NOUNS[@]}]}

SESSION="${ADJECTIVE}-${NOUN}"

tmux has-session -t $SESSION 2>/dev/null

if [[ -z "$TMUX" ]]; then
    tmux new-session -d -s $SESSION -n dev "spf"
    tmux new-window -t $SESSION:2 -n shell
    tmux new-window -t $SESSION:3 -n git "bash -c './scripts/lazygit-auto.sh'"
    tmux select-window -t $SESSION:1
fi

tmux attach-session -t $SESSION

