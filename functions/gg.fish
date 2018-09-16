function gg
    git status
    # ggh
end

function gga
    git add $argv
end

function ggf
    git fetch
end

function ggh
    echo "GG Usage:"
    echo "      gg      git status"
    echo "      gga     git add"
    echo "      ggf     git fetch"
    echo "      ggh     print this help"
    echo "      ggl     git log"
    echo "      ggm     git commit"
    echo "      ggpl    git pull"
    echo "      ggps    git push"
end

function ggl
    git log
end

function ggm
    git commit -m $argv
end

function ggpl
    git pull
end

function ggps
    git push $argv
end
