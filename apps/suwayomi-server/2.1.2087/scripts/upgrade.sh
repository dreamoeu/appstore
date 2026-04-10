#!/bin/bash

if [ -f .env ]; then
  source .env

  # setup-1 add default values
  CURRENT_DIR=$(pwd)
  sed -i '/^ENV_FILE=/d' .env
  sed -i '/^GLOBAL_ENV_FILE=/d' .env
  echo "ENV_FILE=${CURRENT_DIR}/.env" >> .env
  echo "GLOBAL_ENV_FILE=${CURRENT_DIR}/envs/global.env" >> .env

  DATA_DIR="$SUWAYOMI_SERVER_ROOT_PATH/data"

  mkdir -p "$DATA_DIR"

  chown -R 1000:1000 $DATA_DIR
  chmod -R 755 $DATA_DIR

  echo "Check Finish."

else
  echo "Error: .env file not found."
fi
