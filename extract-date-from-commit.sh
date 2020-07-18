#!/bin/bash

# 1. Extract information from the commit excluding differences
# 2. Extract the line containing the "Date:" string
# 3. Extract the columns 2 to 4 using ":" as delimiter

COMMIT_HASH=$1
git show $COMMIT_HASH -s | grep 'Date:' | cut -d ":" -f 2-4 
