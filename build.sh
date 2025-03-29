docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID jainanshika/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID jainanshika/$JOB_NAME:latest

docker push jainanshika/$JOB_NAME:$BUILD_ID

docker push jainanshika/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID jainanshika/$JOB_NAME:$BUILD_ID jainanshika/$JOB_NAME:latest
