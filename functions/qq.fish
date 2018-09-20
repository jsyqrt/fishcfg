function qq
        set DIR $PWD
        cd ~/.config/fish/bashes
        ./proxy.sh $argv
        cd $DIR
end
