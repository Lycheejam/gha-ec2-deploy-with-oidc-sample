#/bin/sh

cd /var/www/gha-ec2-deploy-with-oidc-sample
nohup composer run prod &

exit 0
