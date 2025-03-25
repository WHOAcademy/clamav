cd $(pwd)

version='0.4'

docker build -t whoalxp.azurecr.io/docker-clamav:openshift.$version .


## uncomment the below lines when pushing to Quay

# docker login quay.io

# docker push whoalxp.azurecr.io/docker-clamav:openshift.$version