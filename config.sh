#!/usr/bin/env bash

# The window to select after tmux has finished setting up
DEFAULT_WINDOW=1
# The pane to select after tmux has finished setting up
DEFAULT_PANE=0

WORKSPACE="~"
declare -a WINDOWS=(
  [1]="bash;$WORKSPACE;;" # a window with one panel
  [2]="fluks;$WORKSPACE;cd /opt/si/flux-de-travail && pew in fluks python -m ticker;cd /opt/si/flux-de-travail && pew in fluks python -m feeder" # a window with two panels
  [3]="red-october;$WORKSPACE;cd /opt/si/red-october && python3 -m pew in redoctober uvicorn redoctober.app:app --debug --proxy-headers;cd /opt/si/red-october && npm run watch"
  [4]="ws2;$WORKSPACE;cd /opt/si/ws2 && poetry run python src/ws/freepro/main.py;cd /opt/si/red-october/quasar && fnm exec quasar dev -m ssr"
  [5]="logs;$WORKSPACE;reset && sudo journalctl -n 1 -f SYSLOG\_IDENTIFIER=WS-LOG SYSLOG\_FACILITY=22 | ccze -A"
)
