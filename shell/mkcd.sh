#!/bin/bash

mkcd ()
{
    FOLDER="`whoami`-folder"
    
    mkdir "$FOLDER"
    touch "$FOLDER/.gitkeep"
    cd "$FOLDER"

    exec bash
}

mkcd

