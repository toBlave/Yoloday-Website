#!/bin/bash

# This script deploys the website to Firebase Hosting.

# Prerequisites:
# 1. Make sure you have the Firebase CLI installed: npm install -g firebase-tools
# 2. Make sure you are logged in to Firebase: firebase login
# 3. Make sure you have added the custom domains 'yolo.day' and 'www.yolo.day' to your
#    Firebase Hosting settings and configured your DNS records accordingly.
#    - yolo.day should be the primary domain
#    - www.yolo.day should redirect to yolo.day (301 redirect)
#    - Firebase automatically handles HTTP to HTTPS redirects

# This will deploy to the "yoloday-public" hosting site.
echo "Deploying 'coming soon' website to Firebase project: yoloday, site: yoloday-public"
firebase deploy --only hosting:yoloday-public

echo "Deployment complete. Your 'coming soon' website should be live at https://yoloday-public.web.app"
echo "Custom domain setup:"
echo "1. Configure 'yolo.day' as the primary custom domain for 'yoloday-public' in the Firebase Console"
echo "2. Configure 'www.yolo.day' as a secondary custom domain that will redirect to yolo.day"
echo "3. Firebase automatically handles HTTP to HTTPS redirects for both domains"
echo "Final URLs: https://yolo.day (primary), https://www.yolo.day → https://yolo.day (redirect)"
