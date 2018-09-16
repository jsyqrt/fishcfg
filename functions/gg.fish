function gg
    git status
    ls
end

function gga
    git add $argv
    ls
end

function ggc
    git commit -m $argv
    ls
end

function ggch
    git checkout $argv
    ls
end

function ggchb
    git checkout -b $argv
    ls
end

function ggd
    git diff $argv
end

function ggdn
    git diff --name-only $argv
end

function ggf
    git fetch 
    ls
end

function ggg
    git grep $argv
    ls
end

function ggh
    echo "GG Usage:"
    echo "      gg          git status"
    echo "      gga         git add "
    echo "      ggc         git commit -m $argv"
    echo "      ggch        git checkout $argv"
    echo "      ggchb       git checkout -b $argv"
    echo "      ggd         git diff $argv"
    echo "      ggdn        git diff --name-only $argv"
    echo "      ggf         git fetch"
    echo "      ggg         git grep $argv"
    echo "      ggh         print this help"
    echo "      ggl         git log"
    echo "      ggm         git merge $argv"
    echo "      ggpl        git pull"
    echo "      ggps        git push $argv"
    echo "      ggrb        git rebase -i master"
    echo "      ggrba       git rebase --abort"
    echo "      ggrbc       git rebase --continue"
    ls
end

function ggl
    git log
end

function ggm
    git merge $argv
    ls
end

function ggpl
    git pull
    ls
end

function ggps
    git push $argv
    ls
end

function ggrb
    git rebase -i master
    ls
end

function ggrba
    git rebase --abort
    ls
end

function ggrbc
    git rebase --continue
    ls
end


