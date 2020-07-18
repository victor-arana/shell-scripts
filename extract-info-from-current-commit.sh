#!/bin/bash

# 1. Extract information from the commit excluding differences
# 2. Extract the line containing the "Date:" string
# 3. Extract the columns 2 to 4 using ":" as delimiter

DATE=$(git show HEAD -s | grep 'Date:' | cut -d ":" -f 2-4)
COMMIT_ID=$(git show HEAD -s | grep "commit" | cut -d " " -f 2)
echo "commit: $COMMIT_ID, Date: $DATE"  
