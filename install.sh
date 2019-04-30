#!/bin/sh


# ignores . and .., and filters out .git (I don't think git is neccesarily third, so I'm filtering it out with grep) 
echo "Creating symlinks for base home folder items "
for filename in $(ls -1ad $PWD/.* | tail -n +3 | grep -v .git); do
        echo ${filename}
        ln -fs ${filename} $HOME/
done

echo "Creating symlinks for .config folder items"
for filename in $(ls config); do
        echo $PWD/config/${filename}
        if [ -d ~/.config/${filename} ] 
        then
                echo "Directory ${filename} already exists in .config, moving to ${filename}.old..."
                mv ~/.config/${filename} ~/.config/${filename}.old 
        fi

        ln -fs $PWD/config/${filename} $HOME/.config/   
done
