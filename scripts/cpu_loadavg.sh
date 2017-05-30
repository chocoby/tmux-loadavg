#!/usr/bin/env bash

case "$(uname -s)" in
  Linux)
    cat /proc/loadavg|cut -d' ' -f1
    ;;
  Darwin)
    sysctl vm.loadavg|cut -d' ' -f3
    ;;
  *)
    echo "N/A"
    ;;
esac
