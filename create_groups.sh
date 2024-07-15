#!/bin/bash

# Group name
group_name="kvmusers"

# Check if the group already exists
if grep -q "^$group_name:" /etc/group; then
    echo "Group $group_name already exists."
else
    # Create the group
    sudo groupadd $group_name
    echo "Group $group_name created successfully."
fi

# Add users to the group
users=("user1" "user2")  # Replace with your actual user names

for user in "${users[@]}"; do
    sudo usermod -aG $group_name $user
    echo "User $user added to group $group_name."
done
