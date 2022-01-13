#!/bin/bash

DEBUGFILE="/storage/joy_debug.cfg"
ROM_NAME=$1
echo "$ROM_NAME" >> ${DEBUGFILE}

# Mortal Kombat
# Street Fighter
# Street Fighter
game_cfg=(
  "^.*/u?mk[0-9]?\.zip$" 1
  "^.*/sf[0-9]?b?c?e?\.zip$" 2
  "^.*/sfight2b\.zip$" 2
)

declare -A button_cfg

# AdvMame Button Order.
#def - [1,14] [2,15] [3,13] [4,16] [5,12] [6,11]
#MK  - [1,16] [2,12] [3,13] [4,15] [5,14] [6,11]
#SF  - [1,16] [2,13] [3,11] [4,15] [5,14] [6,12]

button_cfg[0]="input_a_btn input_b_btn input_x_btn input_y_btn input_r_btn input_l_btn input_r2_btn input_l2_btn"
button_cfg[1]="input_y_btn input_r_btn input_x_btn input_b_btn input_a_btn input_l_btn input_r2_btn input_l2_btn"
button_cfg[2]="input_y_btn input_x_btn input_l_btn input_b_btn input_a_btn input_r_btn input_r2_btn input_l2_btn"
