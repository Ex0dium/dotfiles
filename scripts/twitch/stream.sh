stream="https://www.twitch.tv/$1"
chat="https://www.twitch.tv/popout/$1/chat"
if [ "$2" = "-c" ]; then
    firefox --new-tab $chat &
fi
mpv $stream &
