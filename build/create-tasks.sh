oc create --save-config=true -f image-streams/imageStream-liberty-rest-app.yaml 
oc create --save-config=true -f persistentVolumes/task-cache-pvc.yaml 
oc create --save-config=true -f resources/imageStreamResource-intermediate.yaml 
oc create --save-config=true -f resources/imageStreamResource-liberty-rest-app.yaml 
oc create --save-config=true -f resources/sourceCode-GitResource.yaml 
oc create --save-config=true -f tasks/build.yaml 
oc create --save-config=true -f tasks/clearBuildahRepo.yaml 
oc create --save-config=true -f tasks/clearResources.yaml 
oc create --save-config=true -f tasks/createRuntimeImage.yaml 
oc create --save-config=true -f tasks/ocProcessDeploymentTemplate.yaml 
oc create --save-config=true -f tasks/pushImageToQuay.yaml
oc create --save-config=true -f pipelines/pipeline.yaml
oc delete pipelineRun --all
oc secrets link pipeline dockerhubcred --for=pull