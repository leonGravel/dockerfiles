#!/bin/sh

if [ "$1" = 's' ] || [ "$1" = 'server' ]; then
    set -- hexo s -p 4000
fi

if [ "$1" = 'd' ] || [ "$1" = 'deploy' ]; then
    set -- hexo cl && hexo d -g
fi

# set git config
echo "$@" | awk -F ' ' '{print $USER_NAME}' | xargs git config --global user.name

echo "$@" | awk -F ' ' '{print $USER_EMAIL}' | xargs git config --global user.email

exec "$@"
