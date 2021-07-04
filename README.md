# KUBEVIS

kubevis is a new visualization tool for your Kubernetes clusters. It automatically builds logical topologies of your application and infrastructure, which enable your SRE and Ops team to intuitively understand, monitor, and control your containerized, microservices based application. Simply deploy our containerized application directly into your Kubernetes cluster. 

<img src="https://github.com/kubevis/kubevis/blob/master/kubevis-preview.gif" width="600" height="300" />

When your app is running in Kubernetes, our visualization tool will display all the Pods, Services, and Ingresses that allow you to drill down on Kubernetes clusters. The information provided to you includes but is not limited to the following:

* Indicates the status of pods (blue for running, yellow for pending)
* Lists the specific container images running within pods
* Provides information on ingresses and services (Nodeport, load balancer, cluster-ip, persistent volume claims, persistent volumes, etc.)

While the current app does not directly visualize any controllers (such as Deployments, Daemon Sets, Replication Controllers) it does indirectly visualize them through their pods. We are continuously building more support for additional Kubernetes objects.

In addition to these views, nodes can be presented either in graphical or in table mode. The graphical mode is practical for obtaining a quick visual overview of your app, and its infrastructure and connections between all of the nodes. And when you switch to table mode, nodes are presented in a convenient list that displays the resources being consumed by processes, containers, and hosts.

## Deployment

These instructions presume you have a Kubernetes cluster already running. 

An image of the application has been pushed to [Docker Hub](https://hub.docker.com/r/elliotxkim/kubevis/tags/) for those who would like to build the image directly from the public repository. 

We are also providing a deployment file that you can apply directly to your Kubernetes cluster using the command line. 

* kubectl apply -f [kubevis-deployment.yaml](https://raw.githubusercontent.com/Mario-F/kubevis/master/kubevis-deployment.yaml)
* kubectl port-forward deployment/kubevis 3000:3000

In addition, in order to allow reading resources of the API, you must configure a set of permissions. We have set up a YAML file using RBAC authorization which you can apply directly to your Kubernetes cluster using the command line:
* kubectl apply -f [fabric8-rbac.yaml](https://raw.githubusercontent.com/Mario-F/kubevis/master/fabric8-rbac.yaml).

Then, open your web browser to [http://localhost:3000](http://localhost:3000).


## How to Use 

**Navigation**

* Use arrow keys for movement
* Use the ‘-’ or ‘+’ for zoom

**Legend**

* Use the switch icons next to the legend to filter based on Object Types

**Graph**

* Click on Pods/Services/Ingresses to see more detailed information about the selected Object

**View**

* Use the View dropdown to toggle between Graph and Table Views

## Built With
* [React](https://github.com/facebook/react) 
* [Redux](https://github.com/reduxjs/redux) 
* [React-Graph-Vis](https://github.com/crubier/react-graph-vis)
* [Jest](https://github.com/facebook/jest/)

## License

This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/Mario-F/kubevis/blob/master/LICENSE) file for details
