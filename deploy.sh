BRANCH=$1

if ["$BRANCH" = "main"]; then
    DEPLOY_PATH="/home/azureuser/actions-codigofacilito6"
else
    DEPLOY_PATH="/home/azureuser/stage"
fi


ssh -o StrictHostKeyChecking=no azureuser@48.217.49.228 <<HTML

cd $DEPLOY_PATH

git pull --rebase origin $BRANCH

HTML