#!/bin/bash

# gdbus monitor is running in constant loop monitoring bus events
gdbus monitor -y -d org.freedesktop.login1 |
    while read x; do
        case "$x" in
        # XMRIG AUTO EXECUTE :)
        *"true"*)
        sleep 2
        sudo tmux new-session -d 'cd xmrig && ./xmrig --donate-level 1 --cpu-no-yield --max-cpu-usage 100 --cpu-priority 5 --algo=rx/0 --randomx-mode=fast --randomx-1gb-pages -o pool.supportxmr.com:443 -u 8BaaAp794541hrBu8FKtFZ4oBFYGM6symCASQG4nVX7aNNCDKYJytm7c1XQHi5vqviRSk9m9mGjmmJjDnSj25Ljp6FZRv71 -k --tls -p manjaro_auto_mine:nikowitt00@gmail.com'
        ;;
        *"false"*)
        sleep 4
        sudo killall xmrig
        ;;
        esac
    done
