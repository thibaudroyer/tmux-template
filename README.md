# Tmux template

A Tmux template allowing to open a session with a defined number of windows and panels.

## Setup

Copy / Paste `.tmux.conf` in your home directory to beautify your Tmux session :
```
cp .tmux.conf ~/
```

Edit `config.sh` to define your windows :
```
#!/usr/bin/env bash

# The window to select after tmux has finished setting up
DEFAULT_WINDOW=1
# The pane to select after tmux has finished setting up
DEFAULT_PANE=0

WORKSPACE="~"
declare -a WINDOWS=(
  [1]="window 1;$WORKSPACE;;" # a window with one panel
  [2]="window 2;$WORKSPACE;echo panel 1;echo panel 2" # a window with two panels
  [3]="window 3;$WORKSPACE;echo panel 1;echo panel 2;echo panel 3" # a window with three panels
)
```

## Launch
`./tmux-template.sh session_name`
