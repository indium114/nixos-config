#     _   __           __         ____
#    / | / /_  _______/ /_  ___  / / /
#   /  |/ / / / / ___/ __ \/ _ \/ / /
#  / /|  / /_/ (__  ) / / /  __/ / /
# /_/ |_/\__,_/____/_/ /_/\___/_/_/
#  _              _     _           _
# | | _____ _   _| |__ (_)_ __   __| |___   _ __  _   _
# | |/ / _ \ | | | '_ \| | '_ \ / _` / __| | '_ \| | | |
# |   <  __/ |_| | |_) | | | | | (_| \__ \_| | | | |_| |
# |_|\_\___|\__, |_.__/|_|_| |_|\__,_|___(_)_| |_|\__,_|
#           |___/

$env.config.keybindings ++= [
    {
        name: insert_mode
        modifier: none
        keycode: char_u003B
        mode: vi_normal
        event: { send: ViChangeMode mode: "insert" }
    },
    {
        name: disable_h
        modifier: none
        keycode: char_h
        mode: vi_normal
        event: { send: None }
    },
    {
        name: move_up
        modifier: none
        keycode: char_i
        mode: vi_normal
        event: { edit: MoveLineUp }
    },
    {
        name: move_left
        modifier: none
        keycode: char_j
        mode: vi_normal
        event: { edit: MoveLeft }
    },
    {
        name: move_down
        modifier: none
        keycode: char_k
        mode: vi_normal
        event: { edit: MoveLineDown }
    },
    {
        name: move_right
        modifier: none
        keycode: char_l
        mode: vi_normal
        event: { edit: MoveRight }
    },
]
