oc apply -f image-streams/imageStream-liberty-rest-app.yaml 
oc apply -f persistentVolumes/task-cache-pvc.yaml 
oc apply -f resources/imageStreamResource-intermediate.yaml 
oc apply -f resources/imageStreamResource-liberty-rest-app.yaml 
oc apply -f resources/sourceCode-GitResource.yaml 
oc apply -f tasks/build.yaml 
oc apply -f tasks/clearBuildahRepo.yaml 
oc apply -f tasks/clearResources.yaml 
oc apply -f tasks/createRuntimeImage.yaml 
oc apply -f tasks/ocProcessDeploymentTemplate.yaml 
oc apply -f tasks/pushImageToQuay.yaml
oc apply -f pipelines/pipeline.yaml
oc secrets link pipeline dockerhubcred --for=pull
oc delete pipelineRun --all
