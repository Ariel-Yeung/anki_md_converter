#!/bin/bash

cat deck_title.md > result.md

if [ -z $1 ]
then
    echo "ERROR: 'all' to update all cards, or the md filename of new card to add"
    exit
elif [ "$1" == "all" ]
then
    echo "all cards to be updated in result.md"
    cat ./python_algo/*.md >> result.md
else 
    echo "new card to be added in result.md"
    cat ./python_algo/$1.md >> result.md
fi

echo "Remember ctrl+shift+P in vscode, Anki:Send to own deck"