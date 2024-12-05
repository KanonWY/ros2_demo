#!/bin/bash

# 创建一个新的 tmux 会话，并命名为 "ros2_nodes"，默认创建一个面板
tmux new-session -d -s ros2_nodes "source /home/kanon/ros2_test/install/setup.bash; ros2 launch message_publisher msgpub.launch.py"

# 创建一个垂直分屏，并在右侧启动 sub_node
tmux split-window -h -t ros2_nodes "source /home/kanon/ros2_test/install/setup.bash; ros2 launch message_subscriber msgsub.launch.py"

tmux split-window -v -t ros2_nodes "source /home/kanon/ros2_test/install/setup.bash; ros2 launch message_subscriber msgsub.launch.py"

tmux split-window -v -t ros2_nodes "source /home/kanon/ros2_test/install/setup.bash; ros2 launch message_subscriber msgsub.launch.py"

# 将会话附加到用户的终端
tmux attach-session -t ros2_nodes
