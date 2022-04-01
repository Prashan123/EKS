Deployment Steps:
TODO for _Kubernetes: 

- must be in a namespace
    - monitoring
    - logging
    - ingress

    
- Fix ELB Issue
- create run.sh

 secret
 deployment
 service-mysql
 service-restapp
 ingress


alb = supports path based routing, works for not static files
nlb = doesnt support it 

Useful links:
- https://github.com/kubernetes/ingress-nginx/issues/6292
- https://stackoverflow.com/questions/64236985/aws-nginx-ingress-creating-classic-load-balancer-instead-of-application-load-bal