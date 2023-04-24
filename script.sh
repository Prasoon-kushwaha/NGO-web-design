#!/bin/bash

# Retrieve form data from HTTP request
read -r CONTENT_LENGTH
read -r REQUEST_METHOD
if [[ "$REQUEST_METHOD" == "POST" && "$CONTENT_LENGTH" -gt 0 ]]; then
  read -r QUERY_STRING
  IFS='&' read -ra PARAMS <<< "$QUERY_STRING"
  for PARAM in "${PARAMS[@]}"; do
    IFS='=' read -ra KEYVALUE <<< "$PARAM"
    KEY=${KEYVALUE[0]}
    VALUE=${KEYVALUE[1]}
    case $KEY in
      "first_name")
        first_name=$VALUE
        ;;
      "last_name")
        last_name=$VALUE
        ;;
      "age")
        age=$VALUE
        ;;
      "email")
        email=$VALUE
        ;;
      "message")
        message=$VALUE
        ;;
    esac
  done

  # Construct CSV string
  CSV="$first_name,$last_name,$age,$email,$message\n"

  # Write CSV to file using Bash commands
  FILE=submissions.csv
  echo "$CSV" >> "$FILE"

  # Return HTTP response (optional)
  echo "Content-type: text/plain"
  echo ""
  echo "Form submitted successfully."
fi
