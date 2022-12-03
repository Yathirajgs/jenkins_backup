#!/bin/bash 
cp -r /var/lib/jenkins/* /root/jenkins_backup/ 
cd /root/jenkins_backup/ 
rm -rf caches/ 
token="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" 
username="Yathirajgs" 
repoName="jenkins_backup" 
today="date '+%D'" 
git status 
git remote set-url origin https://${token}@github.com/${username}/${repoName}.git 
git add . 
git commit -m "jenkins_backup of ${today}" 
git push origin master
