#!/bin/bash
echo "Creating temp folder to save .vimrc and the script to the git"
echo "Cloning git..."
git clone git@github.com:JeyDot-dev/My_vimrc.git ~/tmp_script_folder
cp ~/.vimrc ~/tmp_script_folder/.vimrc
cp ~/scripts/git_vimrc.sh ~/tmp_script_folder/git_vimrc.sh
echo "Adding, Comitting and Pushing"
git -C ~/tmp_script_folder add .vimrc git_vimrc.sh
git -C ~/tmp_script_folder commit -m "Automated backup"
git -C ~/tmp_script_folder push
echo "Deleting temporary folder"
rm -rf ~/tmp_script_folder
echo "Done !"
