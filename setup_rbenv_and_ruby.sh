#!/bin/bash
if [ "$EUID" -ne 0 ]
   then echo 'Please run as root'
   exit
fi

cd /opt
git clone git://github.com/rbenv/rbenv.git rbenv
chgrp -R staff rbenv
chmod -R g+rwxXs rbenv

export RBENV_ROOT='/opt/rbenv'
export PATH="$RBENV_ROOT/bin:$PATH"

echo 'export RBENV_ROOT="/opt/rbenv"' >> /etc/skel/.profile
echo 'export PATH="$RBENV_ROOT/bin:$PATH"' >> /etc/skel/.profile
echo 'export RBENV_ROOT="/opt/rbenv"' >> /etc/skel/.bashrc
echo 'export PATH="$RBENV_ROOT/bin:$PATH"' >> /etc/skel/.bashrc

eval "$(rbenv init -)"

mkdir plugins
cd plugins
git clone https://github.com/rbenv/ruby-build.git ruby-build

rbenv install 2.2.0

apt-install -y postgresql-9.4 postgresql-client-9.4


