#!/bin/bash

# 1. Extract information from the commit excluding differences
# 2. Extract the line containing the "Date:" string
# 3. Extract the columns 2 to 4 using ":" as delimiter

git show HEAD -s | grep 'Date:' | cut -d ":" -f 2-4 
