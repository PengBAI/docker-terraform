
# ================================================================================================================
#
# Terraform command with custom features like file inclusions.
#
# @see https://github.com/AlbanMontaigu/docker-terraform
# @see https://github.com/AlbanMontaigu/docker-terraform
# ================================================================================================================

# Base image
FROM alpine:3.4

# Maintainer
MAINTAINER alban.montaigu@gmail.com

# Environment variables
ENV TERRAFORM_VERSION 0.6.16

# System preparation & terraform installation
RUN apk add --update wget ca-certificates unzip m4 
RUN wget -q "https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64/glibc-2.21-r2.apk"
RUN apk add --allow-untrusted glibc-2.21-r2.apk 
RUN wget -q -O /terraform.zip "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" 
RUN unzip /terraform.zip -d /bin 
RUN apk del --purge wget ca-certificates unzip 
RUN rm -rf /var/cache/apk/* glibc-2.21-r2.apk /terraform.zip

# Volumes and workdir configuration
VOLUME ["/data"]
WORKDIR /data

# Entrypoint to enable live customization
COPY docker-entrypoint.sh /docker-entrypoint.sh

# Main command
ENTRYPOINT ["/docker-entrypoint.sh"]

# Default flags for the main command
CMD ["--help"]
