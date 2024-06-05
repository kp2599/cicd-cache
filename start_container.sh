# start_container.sh
#!/bin/bash
set -e

# Log the start of the script
echo "Starting start_container.sh script" | tee -a /var/log/codedeploy-agent/start_container.log

# Pull the Docker image from Docker Hub
echo "Pulling the latest Docker image..." | tee -a /var/log/codedeploy-agent/start_container.log
# Replace 'my_image' with the actual image name
docker pull my_image:latest

# Run the Docker image as a container
echo "Starting the Docker container..." | tee -a /var/log/codedeploy-agent/start_container.log
# Replace 'my_container' with the desired container name and 'my_image' with the actual image name
docker run -d --name my_container my_image:latest

echo "Container started." | tee -a /var/log/codedeploy-agent/start_container.log
