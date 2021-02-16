#!/bin/bash
# About: Bash script to create new Jekyll posts
# Author: @AamnahAkram
# URL: https://gist.github.com/aamnah/f89fca7906f66f6f6a12
# Description: This is a very basic version of the script

# VARIABLES
######################################################

# Define the post directory (where to create the file)
HUGO_POSTS_DIR='src/data/blog/'

# Post title
TITLE=''

for var in "$@"
do
    TITLE=$TITLE" $var"
done

# Replace spaces in title with hyphen
TITLE_STRIPPED=${TITLE// /-}

# Date
DATE=`date +%Y-%m-%d`

# Post Type (markdown, md, textile)
TYPE='.md'

# File name structure
FILENAME=index.md

# COMMANDS
#######################################################

# go to post directory
cd ${HUGO_POSTS_DIR}

mkdir ${TITLE_STRIPPED}

cd ${TITLE_STRIPPED}

# make a new post file
touch ${FILENAME}

# add YAML front matter and trim leading blank line
echo -e "
---
title: 
categories: ['frameworks', 'css', 'performance']
image: './e4d5ed47ee58aa859995cae2a4e83221.webp'
imageCredit: https://dribbble.com/shots/13972666-faces
date: "2015-05-01T22:12:03.284Z"
time: 3
description: "description"
---

" | sed '/./,$!d' > ${FILENAME}
