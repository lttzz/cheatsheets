# https://www.ruanyifeng.com/blog/2019/10/tmux.html

# Session Management
# 1. create a new session with session-name
tmux new -s <session-name>
# 2. detach from given session, <C-b> d
tmux detach
# 3. attach to given session
tmux attach -t <session-name>
# 4. list all sessions, <C-b> s
tmux list-sessions
# 5. destroy the given session
tmux kill-session -t <session-name>
# 6. switch session
tmux switch -t <session-name>, <C-b> s
# 7. rename current session, <C-b> $
tmux reaname-session -t <old-name> <new-name>

# Pane Management
# 1. split window vertically, <C-b> "
tmux split-window
# 2. split window horizontally, <C-b> %
tmux split-window -h
# 3. select pane, <C-b> <arrow key>
tmux select-pane -U
tmux select-pane -D
tmux select-pane -L
tmux select-pane -R
# 4. swap pane
# swap the active pane with the pane above, <C-b> {
tmux swap-pane -U
# swap the active pane with the pane below, <C-b> }
tmux swap-pane -D
# 5. display pane numbers, <C-b> q
# 6. zoom the active pane, <C-b> z
# 7. kill the active pane, <C-b> x
# 8. break pane to a new window, <C-b> !

# Window Managment
# 1. create a new window, <C-b> c
tmux new-window -n <window-name>
# 2. select window, <C-b> [p|n|number]
tmux select-window -t <window-name>
# 3. rename current window, <C-b> ,
tumx rename-window <new-name>
# 4. choose a window from a list, <C-b> w

# Others
# 1. prompt for a command, <C-b> :
# 2. to start a shared session:
tmux -S /tmp/your_shared_session
chmod 777 /tmp/your_shared_session
# 3. to help screen, <C-b> ?
# 4. execute commands from one or more files specified by path
tmux source-file ~/.tmux.conf
