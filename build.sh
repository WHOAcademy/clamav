cd $(pwd)

version='0.3'

docker build -t whoalxp.azurecr.io/docker-clamav:openshift-base.$version .


## uncomment the below lines when pushing to Quay

# docker login quay.io

# docker push whoalxp.azurecr.io/docker-clamav:openshift-base.$version