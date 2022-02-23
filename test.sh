#!/bin/ash

target=google.com

while : ; do
  if ! result="$(dig +timeout=1 +short $target)"
  then
    echo "Failed resolving $target"
    exit 1
  else
    echo "$target resolved to $result"
  fi
  sleep 1
done

