#!/bin/ash

targets="google.com coredns.kube-system.svc.cluster.local coredns.kube-system.svc coredns.kube-system coredns"

while : ; do
  for target in $targets
  do
    if ! result="$(nslookup -type=A $target)"
    then
      echo "Failed resolving $target"
      exit 1
    else
      echo "$target resolved, result:"
      echo "$result"
      echo ""
    fi
  done
  sleep 1
done

