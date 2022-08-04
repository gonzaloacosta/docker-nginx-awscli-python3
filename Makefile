CMD		:= kubectl
#CMD	:= oc

docker/build:
	@docker build -t gonzaloacosta/tools .

docker/push:
	@docker push gonzaloacosta/tools

kube/pod:
	@$(CMD) run --generator=run-pod/v1 tools --image=gonzaloacosta/tools

kube/status:
	@$(CMD) get all

kube/deploy:
	@$(CMD) create deployment tools --image=gonzaloacosta/tools --replicas 1
	@$(CMD) expose deployment tools --port=80 --target-port=80 --type ClusterIP 

kube/exec:
	@$(CMD) exec -it tools bash

kube/pod/delete:
	@$(CMD) delete pod tools

kube/deploy/delete:
	@$(CMD) delete pod tools
