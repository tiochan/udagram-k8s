# Screenshots
To help review your infrastructure, please include the following screenshots in this directory::

## Deployment Pipeline
* DockerHub showing containers that you have pushed
  * ![Dockerhub report status](./deployment-pipeline-screenshots/02_dockerhub_01_repos_status.png)
  * ![Dockerhub frontend details](./deployment-pipeline-screenshots/02_dockerhub_02_udagram_frontend_details.png)
  * ![Dockerhub backend feed details](./deployment-pipeline-screenshots/02_dockerhub_03_udagram_feed_details.png)
  * ![Dockerhub backend user details](./deployment-pipeline-screenshots/02_dockerhub_04_udagram_api_user_details.png)
  * ![Dockerhub reverse proxy details](./deployment-pipeline-screenshots/02_dockerhub_05_udagram_reverseproxy_details.png)

* GitHub repository’s settings showing your Travis webhook (can be found in Settings - Webhook)
  
  * As I describe in the screenshot below, I could not use travis.org because it didn't allow me to execute builds with my free account because of lack of resources.

  Instead of that I had to use my company's resources: Github enterprise + Travis (integrated with GHE)

  In this setup, I don't see any webhook in my repository. So I paste the integration in Travis that shows the repository name. The other screenshots also demonstrate that travis is building successfully the whole pipeline.

  ![Webhook not in GHE but in travis](./deployment-pipeline-screenshots/01_Webhook_in_travis.png)
  

* Travis CI showing a successful build and deploy job

  * ![Travis build part 1](./deployment-pipeline-screenshots/01_travis_build_part_1.png)

  * ![Travis build part 2](./deployment-pipeline-screenshots/01_travis_build_part_2.png)

  * ![Travis build part 3](./deployment-pipeline-screenshots/01_travis_build_part_3.png)

## Kubernetes
* To verify Kubernetes pods are deployed properly
```bash
kubectl get pods
```
  * ![kubectl get pods](./kubectl-screenshots/90-kubectl-get-pods.png)

* To verify Kubernetes services are properly set up
```bash
kubectl describe services
```
  * ![kubectl get pods part 1](./kubectl-screenshots/91-kubectl-describe-services-01.png)

  * ![kubectl get pods part 2](./kubectl-screenshots/91-kubectl-describe-services-02.png)

* To verify that you have horizontal scaling set against CPU usage
```bash
kubectl describe hpa
```

  * ![kubectl get hpa part 1](./kubectl-screenshots/92-kubectl-get-hpa-01.png)

  * ![kubectl get hpa part 2](./kubectl-screenshots/92-kubectl-get-hpa-02.png)

* To verify that you have set up logging with a backend application
```bash
kubectl logs {pod_name}
```

  * ![kubectl logs frontend](./kubectl-screenshots/95-kubectl-logs-frontend.png)

  * ![kubectl logs backend feed](./kubectl-screenshots/96-kubectl-logs-backend-feed.png)

  * ![kubectl logs backend user](./kubectl-screenshots/97-kubectl-logs-backend-user.png)


# Final result

Worth to share a screenshot of the final result

![Udagram sgomez](./z-final-view/udagram_sgomez.png)
