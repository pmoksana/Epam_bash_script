#Save the script as task1.sh and make it executable:
chmod +x task1.sh

#!/bin/bash

# Check if file argument is given
if [ $# -ne 1 ]; then
  echo "Usage: $0 accounts.csv"
  exit 1
fi

input_file="$1"
output_file="accounts_new.csv"

# Create or overwrite output file
> "$output_file"

while IFS=',' read -r id location_id name title _; do
  # Skip empty lines
  [ -z "$id" ] && continue

  # Extract first and last name
  first_name=$(echo "$name" | awk '{print $1}')
  last_name=$(echo "$name" | awk '{print $2}')

  # Capitalize first letter, lowercase rest
  first_name_formatted="$(echo ${first_name:0:1} | tr '[:lower:]' '[:upper:]')$(echo ${first_name:1} | tr '[:upper:]' '[:lower:]')"
  last_name_formatted="$(echo ${last_name:0:1} | tr '[:lower:]' '[:upper:]')$(echo ${last_name:1} | tr '[:upper:]' '[:lower:]')"

  # Generate email base
  email_prefix="$(echo ${first_name:0:1}${last_name} | tr '[:upper:]' '[:lower:]')"

  # Handle duplicates by appending location_id if needed
  if grep -q "$email_prefix@abc.com" "$output_file"; then
    email="${email_prefix}${location_id}@abc.com"
  else
    email="${email_prefix}@abc.com"
  fi

  # Write to output
  echo "$id,$location_id,$first_name_formatted $last_name_formatted,$title,$email," >> "$output_file"

done < "$input_file"


#Run it with:
./task1.sh accounts.csv

