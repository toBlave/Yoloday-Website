#!/bin/bash

# This script deploys the website to Firebase Hosting.

# Prerequisites:
# 1. Make sure you have the Firebase CLI installed: npm install -g firebase-tools
# 2. Make sure you are logged in to Firebase: firebase login
# 3. Make sure you have added the custom domain 'www.yolo.day' to your
#    Firebase Hosting settings and configured your DNS records accordingly.

# This will deploy to the "yoloday-public" hosting site.
echo "Deploying 'coming soon' website to Firebase project: yoloday, site: yoloday-public"
firebase deploy --only hosting:yoloday-public

echo "Deployment complete. Your 'coming soon' website should be live at https://yoloday-public.web.app"
echo "Remember to manually configure 'www.yolo.day' as a custom domain for 'yoloday-public' in the Firebase Console."
