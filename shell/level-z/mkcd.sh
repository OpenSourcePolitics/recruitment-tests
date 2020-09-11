#!/bin/bash

TARGET_DIR=$(whoami)-folder
mkdir $TARGET_DIR && touch $TARGET_DIR/.gitkeep
cd $TARGET_DIR
exec bash


