function_test(){
    name="$(whoami)"
    mkdir "$name-folder"
    cd "$name-folder"
    touch .gitkeep
}

#!/bin/bash
function_test
