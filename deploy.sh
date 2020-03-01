echo "Installing 'node-cmd'"
npm install node-cmd
echo "Installing 'node-ssh'"
npm install node-ssh
echo "Running 'deploy.js'"
node deploy.js
deploy:
  - provider: script
    skip_cleanup: true
    script: chmod +x ./deploy.sh && ./deploy.sh
    on:
      branch: master