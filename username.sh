#! /bin/bash
# username.sh
# Natalie Huante
echo "Username can contain lowercase letters, underscores, and digits."
echo "It must start with a lowercase letter and be a length of 3-12"

echo "Enter a username: "
read -r NAME

while echo "$NAME" | grep -E -v "^[a-z][0-9a-z_]{2,11}$" > /dev/null 2>&1
do
	echo "Invalid entry!"
	echo "Enter a username: "
	read -r NAME
done
echo "Username accepted! Thank you."
