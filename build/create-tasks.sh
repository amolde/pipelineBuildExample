oc create --save-config=true -f image-streams/imageStream-liberty-rest-app.yaml
oc create --save-config=true -f resources/imageStreamResource-intermediate.yaml
oc create --save-config=true -f resources/imageStreamResource-liberty-rest-app.yaml
oc create --save-config=true -f resources/sourceCode-GitResource.yaml
oc create --save-config=true -f tasks/build.yaml
oc create --save-config=true -f tasks/clearResources.yaml
oc create --save-config=true -f tasks/createRuntimeImage.yaml
oc create --save-config=true -f tasks/oc-deploy-application.yaml
oc create --save-config=true -f tasks/pushImageToQuay.yaml
oc create --save-config=true -f tasks/acs-deployment-check.yaml
oc create --save-config=true -f tasks/acs-image-check.yaml
oc create --save-config=true -f pipelines/pipeline.yaml
