#!/bin/bash
wget https://dl.suckless.org/st/st-0.7.tar.gz
tar -xzvf st-0.7.tar.gz && cd st-0.7
wget https://st.suckless.org/patches/copyurl/st-copyurl-0.7.diff
wget https://st.suckless.org/patches/externalpipe/st-externalpipe-0.7.diff
wget https://st.suckless.org/patches/right_click_to_plumb/right_click_to_plumb.diff
wget https://st.suckless.org/patches/scrollback/st-scrollback-0.7.diff
wget https://st.suckless.org/patches/vertcenter/st-vertcenter-0.7.diff
L=('st-copyurl-0.7.diff' 'st-externalpipe-0.7.diff' 'right_click_to_plumb.diff' 'st-scrollback-0.7.diff' 'st-vertcenter-0.7.diff')
for i in "${L[@]}";do patch -Np1 -i "$i"; done;

# mkdir -p ~/.cache/asp
# mkdir -p ~/builds
# cd ~/builds
# sudo apt install -y asp
# asp export st
# cd st
# ls
