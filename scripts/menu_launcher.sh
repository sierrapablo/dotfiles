#!/bin/sh

if [ -z "$TMUX" ]; then
  choice=$(echo -e "New tmux session for work\nNew tmux default session\nTerminal only\nOpen File Explorer\nAttach to existing tmux session\nOpen system monitor\nStart Python shell\nSSH to server\nLaunch Neovim\nLaunch Nano\nLaunch AI Assistant\nUpdate System\nClean Package Cache\nOpen System Logs\nCheck Disk Usage\nReboot\nShutdown" | \
      fzf --prompt="📌 Select an option: " --height=40% --border --info=inline --layout=reverse --color=16)

  case "$choice" in
      *"New tmux session for work"*) ./scripts/tmux-start.sh ;;
      *"New tmux default session"*) tmux new-session ;;
      *"Terminal only"*) ;;
      *"Open File Explorer"*) spf ;;
      *"Attach to existing tmux session"*) tmux attach-session -t $(tmux list-sessions -F "#{session_name}" | fzf) ;;
      *"Open system monitor"*) htop ;;
      *"Start Python shell"*) python ;;
      *"SSH to server"*) ssh $(awk '{print $1}' ~/.ssh/known_hosts | fzf) ;;
      *"Launch Neovim"*) nvim ;;
      *"Launch Nano"*) nano ;;
      *"Launch AI Assistant"*) ollama run deepseek-r1 ;;
      *"Update System"*) ./scripts/update_system.sh && fastfetch && sleep 3 && exit;;
      *"Clean Package Cache"*) sudo pacman -Sc --noconfirm && paru -Sc --noconfirm && fastfetch && sleep 3 && exit;;
      *"Open System Logs"*)
        echo -n "🔍 Enter search term: "
        read log_query
        [ -n "$log_query" ] && journalctl -xe | grep --color=always -i "$log_query" | less -R
        ;;
      *"Check Disk Usage"*) ncdu ;;
      *"Reboot"*) sudo reboot -h now;;
      *"Shutdown"*) sudo shutdown -h now;;
  esac
fi
