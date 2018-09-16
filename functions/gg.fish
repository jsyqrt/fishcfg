function gg
    git status
    # ggh
end

function gga
    git add $argv
end

function ggc
    git commit -m $argv
end

function ggf
    git fetch
end

function ggg
    git grep $argv
end

function ggh
    echo "GG Usage:"
    echo "      gg          git status"
    echo "      gga         git add "
    echo "      ggc         git commit -m $argv"
    echo "      ggf         git fetch"
    echo "      ggg         git grep $argv"
    echo "      ggh         print this help"
    echo "      ggl         git log"
    echo "      ggpl        git pull"
    echo "      ggps        git push $argv"
    echo "      ggrb        git rebase -i master"
    echo "      ggrba       git rebase --abort"
    echo "      ggrbc       git rebase --continue"
end

function ggl
    git log
end

function ggpl
    git pull
end

function ggps
    git push $argv
end

function ggrb
    git rebase -i master
end

function ggrba
    git rebase --abort
end

function ggrbc
    git rebase --continue
end


