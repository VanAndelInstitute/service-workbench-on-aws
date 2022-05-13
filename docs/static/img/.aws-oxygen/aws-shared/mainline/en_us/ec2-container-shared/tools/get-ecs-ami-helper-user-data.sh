#!/usr/bin/env bash
cat << 'BOOYAH' > /tmp/magic.sh
#!/usr/bin/env bash
set -e
set -x
AMI_INFO_FILE=/tmp/ami-info-file

# Test for Amazon Linux version and install jq and AWS CLI with appropriate commands
if cat /etc/system-release | grep "Amazon Linux AMI" ; then
    AL_VERSION=1
    yum install -y jq aws-cli
else
    AL_VERSION=2
    yum install -y jq awscli
fi

if uname -r | grep x86_64 ;
then
    ARCH="x86_64";
elif uname -r | grep aarch64 ;
then
    ARCH="aarch64";
fi

if [ -f /opt/nvidia/cuda/version.txt ];
then
    GPU=true
fi


AMI_ID=$(curl -s http://169.254.169.254/latest/meta-data/ami-id/)
AWS_REGION=$(curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | jq -r .region)
AMI_NAME=$(aws ec2 describe-images --image-id $AMI_ID --region $AWS_REGION | jq -r .Images[0].Name)
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | jq -r .instanceId)

# Delete earlier versions of AMI info file, if they exist 
#if aws s3api head-object --bucket USERNAME_PLACEHOLDER-ecs-ami-info --key $AMI_NAME 2>/dev/null; then
#    aws s3 rm s3://USERNAME_PLACEHOLDER-ecs-ami-info/$AMI_NAME
#fi

# Wait for ECS introspection API
until curl -s http://localhost:51678/v1/metadata
	do
		sleep 1	
	done

AGENT_VERSION_STRING=$(curl -s http://localhost:51678/v1/metadata | jq -r .Version)
VERSION_NUMBER=$(curl -s http://localhost:51678/v1/metadata | jq -r .Version | awk '{print $5}' | cut -c 2-)
DOCKER_VERSION=$(docker version --format '{{.Server.Version}}')
ECS_INIT_MAJOR_VERSION=$(yum info ecs-init | grep Version | awk '{print $3}')
ECS_INIT_MINOR_VERSION=$(yum info ecs-init | grep Release | awk '{print $3}' | cut -f1 -d".")

if [ $AL_VERSION -eq 1 ]
then
cat << EOF > $AMI_INFO_FILE
<!-- AL1 agent/docker info  -->
<!-- $ curl -s http://localhost:51678/v1/metadata | python -mjson.tool | grep Version -->
<!ENTITY ECS_agent_current_version "${VERSION_NUMBER}" >
<!ENTITY introspection-api-version-output '"Version": "${AGENT_VERSION_STRING}"' >

<!-- $ AL1 docker version -->
<!ENTITY current-ecs-ami-docker-version "${DOCKER_VERSION}" >
<!ENTITY rec-docker-version "&current-ecs-ami-docker-version;" >
<!ENTITY ecr-rec-docker-version "&current-ecs-ami-docker-version;" >

<!-- $ AL1 ecs-init version -->
<!-- $ sudo yum info ecs-init -->
<!ENTITY current-ecs-init-version "${ECS_INIT_MAJOR_VERSION}-${ECS_INIT_MINOR_VERSION}" >
EOF

# Test for AL2 GPU AMI
elif [ $AL_VERSION -eq 2 ] && [ $GPU == "true" ]
then
NVIDIA_DRIVER_VERSION=$(nvidia-smi | grep "Driver Version" | awk '{ print $6 }')
CUDA_VERSION=$(cat /opt/nvidia/cuda/version.txt | awk '{ print $3 }')
cat << EOF > $AMI_INFO_FILE
<!-- AL2 GPU agent/docker info  -->
<!-- $ curl -s http://localhost:51678/v1/metadata | python -mjson.tool | grep Version -->
<!ENTITY gpu-ECS_agent_current_version "${VERSION_NUMBER}" >
<!ENTITY gpu-introspection-api-version-output '"Version": "${AGENT_VERSION_STRING}"' >

<!-- $ AL2 GPU docker version -->
<!ENTITY gpu-current-ecs-ami-docker-version "${DOCKER_VERSION}" >
<!ENTITY gpu-rec-docker-version "&current-ecs-ami-docker-version;" >
<!ENTITY gpu-ecr-rec-docker-version "&current-ecs-ami-docker-version;" >

<!-- $ AL2 GPU ecs-init version -->
<!-- $ sudo yum info ecs-init -->
<!ENTITY gpu-current-ecs-init-version "${ECS_INIT_MAJOR_VERSION}-${ECS_INIT_MINOR_VERSION}" >

<!-- NVIDIA driver version -->
<!ENTITY gpu-nvidia-driver-version "${NVIDIA_DRIVER_VERSION}" >

<!-- CUDA version -->
<!-- $ cat /opt/nvidia/cuda/version.txt -->
<!ENTITY gpu-cuda-version "${CUDA_VERSION}" >
EOF

# Test for AL2 ARM AMI
elif [ $AL_VERSION -eq 2 ] && [ $ARCH == "aarch64" ]
then
cat << EOF > $AMI_INFO_FILE
<!-- AL2 arm64 agent/docker info  -->
<!-- $ curl -s http://localhost:51678/v1/metadata | python -mjson.tool | grep Version -->
<!ENTITY al2-arm64-ECS_agent_current_version "${VERSION_NUMBER}" >
<!ENTITY al2-arm64-introspection-api-version-output '"Version": "${AGENT_VERSION_STRING}"' >

<!-- $ AL2 arm64 docker version -->
<!ENTITY al2-arm64-current-ecs-ami-docker-version "${DOCKER_VERSION}" >
<!ENTITY al2-arm64-rec-docker-version "&current-ecs-ami-docker-version;" >
<!ENTITY al2-arm64-ecr-rec-docker-version "&current-ecs-ami-docker-version;" >

<!-- $ AL2 arm64 ecs-init version -->
<!-- $ sudo yum info ecs-init -->
<!ENTITY al2-arm64-current-ecs-init-version "${ECS_INIT_MAJOR_VERSION}-${ECS_INIT_MINOR_VERSION}" >
EOF

# Test for AL2 x86 AMI
elif [ $AL_VERSION -eq 2 ] && [ $ARCH == "x86_64" ]
then
cat << EOF > $AMI_INFO_FILE
<!-- AL2 agent/docker info  -->
<!-- $ curl -s http://localhost:51678/v1/metadata | python -mjson.tool | grep Version -->
<!ENTITY al2-ECS_agent_current_version "${VERSION_NUMBER}" >
<!ENTITY al2-introspection-api-version-output '"Version": "${AGENT_VERSION_STRING}"' >

<!-- $ AL2 docker version -->
<!ENTITY al2-current-ecs-ami-docker-version "${DOCKER_VERSION}" >
<!ENTITY al2-rec-docker-version "&current-ecs-ami-docker-version;" >
<!ENTITY al2-ecr-rec-docker-version "&current-ecs-ami-docker-version;" >

<!-- $ AL2 ecs-init version -->
<!-- $ sudo yum info ecs-init -->
<!ENTITY al2-current-ecs-init-version "${ECS_INIT_MAJOR_VERSION}-${ECS_INIT_MINOR_VERSION}" >
EOF
fi

aws s3 cp $AMI_INFO_FILE s3://USERNAME_PLACEHOLDER-ecs-ami-info/$AMI_NAME
aws ec2 terminate-instances --instance-ids $INSTANCE_ID --region $AWS_REGION
BOOYAH
chmod +x /tmp/magic.sh
nohup bash -c /tmp/magic.sh &