#!/usr/bin/env bash
set -e
APP="night-$(date +%s)"
echo "Creating $APP"
wrangler pages project create "$APP" --production-branch main
wrangler pages deploy ../phish --project-name="$APP"
echo "Live at: https://$APP.pages.dev" 