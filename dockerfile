FROM harness/delegate:24.07.82905.minimal
USER root
RUN microdnf install -y \
curl \
unzip \
python3 \
python3-pip \
which

# Install OpenSSL
RUN microdnf install openssl

# Install Kubectl
RUN mkdir /opt/harness-delegate/tools && cd /opt/harness-delegate/tools \
&& curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
&& chmod +x kubectl

# Install GoTemplate
RUN mkdir /opt/harness-delegate/client-tools/go-template \
&& mkdir /opt/harness-delegate/client-tools/go-template/v0.4.4 \
&& curl -s -L -o /opt/harness-delegate/client-tools/go-template/v0.4.4/go-template https://app.harness.io/public/shared/tools/go-template/release/v0.4.4/bin/linux/amd64/go-template \
&& chmod 755 /opt/harness-delegate/client-tools/go-template/v0.4.4/go-template

# Install Helm
RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

# Install Terraform
RUN microdnf install yum && yum install -y yum-utils
RUN yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo \
&& microdnf install -y terraform

# Install Terragrunt
RUN cd /opt/harness-delegate/tools && curl -L "https://github.com/gruntwork-io/terragrunt/releases/download/v0.34.1/terragrunt_linux_amd64" -o terragrunt\
&& chmod +x terragrunt

ENV PATH=/opt/harness-delegate/tools/:$PATH

USER harness