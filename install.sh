#!/bin/bash

# Install bash aliases
BASH_ALIASES=".bash_aliases"
BASH_ALIASES_PATH="./linux/$BASH_ALIASES"
BASH_ALIASES_HOME="$HOME"

if [ -f "$BASH_ALIASES_HOME/$BASH_ALIASES" ]; then
  echo "$BASH_ALIASES_HOME/$BASH_ALIASES already exists - appending config file contents..."
  while IFS= read -r line; do
    grep -qFx "$line" "$BASH_ALIASES_HOME/$BASH_ALIASES" || echo "$line" >> "$BASH_ALIASES_HOME/$BASH_ALIASES"
  done < "$BASH_ALIASES_PATH"
else
  echo "Creating $BASH_ALIASES_PATH..."
  cp "$BASH_ALIASES_PATH" "$BASH_CONFIG_HOME/"
fi

# Install git config
GIT_CONFIG=".gitconfig"
GIT_CONFIG_PATH="./git/$GIT_CONFIG"
GIT_CONFIG_HOME="$HOME"

if [ -f "$GIT_CONFIG_HOME/$GIT_CONFIG" ]; then
  echo "$GIT_CONFIG_HOME/$GIT_CONFIG already exists - appending config file contents..."
  while IFS= read -r line; do
    grep -qFx "$line" "$GIT_CONFIG_HOME/$GIT_CONFIG" || echo "$line" >> "$GIT_CONFIG_HOME/$GIT_CONFIG"
  done < "$GIT_CONFIG_PATH"
else
  echo "Creating $GIT_CONFIG_PATH..."
  cp "$GIT_CONFIG_PATH" "$GIT_CONFIG_HOME/"
fi

