#!/bin/sh


# ignores . and .., and filters out .git (I don't think git is neccesarily third, so I'm filtering it out with grep) 
for filename in $(ls -1ad $PWD/.* | tail -n +3 | grep -v .git); do
        echo ${filename}
        ln -fs ${filename} $HOME/
done
