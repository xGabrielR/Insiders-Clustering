#!/bin/bash
 
model_run_date=$(date +"%Y_%m_%d")

ipynb_="c10_deploy_insiders"
env_path="/home/grc/arep/ds-em-cluster/bin"
deploy_path="/home/grc/arep/ds-em-cluster/deploy"

echo $(date +"%Y-%m-%d %H:%M:%S") "| [START] | Insiders Clustering" >> "clustering_logs.txt"

source $env_path/activate

$env_path/papermill $deploy_path/src/$ipynb_.ipynb $deploy_path/reports/$ipynb_-$model_run_date.ipynb

echo $(date +"%Y-%m-%d %H:%M:%S") "| [ENDED] | Insiders Clustering" >> "clustering_logs.txt"
echo " " >> "clustering_logs.txt"
