#!/bin/bash

CODEOSS_PATH="/home/user/.codeoss-cloudworkstations"
SETTINGS_PATH="$CODEOSS_PATH/data/Machine"

mkdir -p $SETTINGS_PATH
cat << EOF > $SETTINGS_PATH/settings.json
{
    "workbench.colorTheme": "Default Dark+",
}
EOF

chown -R user:user /home/user