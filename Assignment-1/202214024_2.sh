#!/bin/bash

# Prompt the user to choose their favorite fruit
echo "Please choose your favorite fruit from the following options:"
echo "1. Apple"
echo "2. Banana"
echo "3. Mango"
echo "4. Orange"
echo "5. Watermelon"
read -p "Enter the number corresponding to your choice (1-5): " choice

# Process the user's choice using a case statement
case $choice in
    1) echo "You chose Apple! Apples remind me of Newton!" ;;
    2) echo "You chose Banana! Bananas remind me of Charles Darwin (monkey guy)" ;;
    3) echo "You chose Mango! My favorite ^_^ Mangos are sweet and juicy!" ;;
    4) echo "You chose Orange.. Hmm, Oranges are packed with Vitamin C" ;;
    5) echo "You chose Watermelon! Nice choice ;), They're great for summer" ;;
    *) echo "Invalid choice. Please choose a number between 1 and 5." ;;
esac
