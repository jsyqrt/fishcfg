function gg
    git status

    echo ""
    ls
end

function gga
    git add $argv

    echo ""
    ls
end

function ggb
    git branch

    echo ""
    ls
end

function ggbd
    git branch -d $argv

    echo ""
    ls
end

function ggbdd
    git branch -D $argv

    echo ""
    ls
end

function ggc
    git commit -m $argv

    echo ""
    ls
end

function ggch
    git checkout $argv

    echo ""
    ls
end

function ggchb
    git checkout -b $argv

    echo ""
    ls
end

function ggd
    git diff $argv
end

function ggdn
    git diff $argv --name-only
end

function ggf
    git fetch 

    echo ""
    ls
end

function ggg
    git grep $argv

    echo ""
    ls
end

function ggh
    echo "GG Usage:"
    echo "      gg          git status"
    echo "      gga         git add "
    echo "      ggb         git branch "
    echo "      ggbd        git branch -d $argv"
    echo "      ggbdd       git branch -D $argv"
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

    echo ""
    ls
end

function ggpl
    git pull

    echo ""
    ls
end

function ggps
    git push $argv

    echo ""
    ls
end

function ggrb
    git rebase -i master

    echo ""
    ls
end

function ggrba
    git rebase --abort

    echo ""
    ls
end

function ggrbc
    git rebase --continue

    echo ""
    ls
end


