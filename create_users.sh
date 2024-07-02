#!/bin/bash

# Define an array of user names
users=("user1" "user2" "user3")

# Loop through the array and create users
for user in "${users[@]}"
do
    # Check if the user already exists
    if id "$user" &>/dev/null; then
        echo "User $user already exists."
    else
        # Create the user with a default password
        useradd -m "$user"
        echo "User $user created."
    fi
done
