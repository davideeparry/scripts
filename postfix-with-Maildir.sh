#!/bin/bash
sudo yum install postfix
mkdir -p ~/Maildir/{cur,new,tmp}
sudo postconf -e mailbox_command=
sudo postconf -e home_mailbox=Maildir/
sudo postconf -e inet_interfaces=all
sudo postfix stop
sudo postfix start