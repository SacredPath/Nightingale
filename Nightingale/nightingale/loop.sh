#!/usr/bin/env bash
# Usage: ./loop.sh <email_csv>
while IFS= read -r EMAIL; do
  ENC=$(echo -n "$EMAIL" | base64 -w0)
  LINK="https://night-$(date +%s).pages.dev?e=$ENC"
  echo "$EMAIL $LINK" >> targets.log
  sleep 120  # Cloudflare rate-limit
done < "$1" 