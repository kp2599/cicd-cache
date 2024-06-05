# stop_container.sh
#!/bin/bash
set -e

# Log the start of the script
echo "Starting stop_container.sh script" | tee -a /var/log/codedeploy-agent/stop_container.log

# Stop the running container (if any)
echo "Stopping the running container..." | tee -a /var/log/codedeploy-agent/stop_container.log

# Replace 'my_container' with the actual name or ID of your container
docker stop my_container || true
docker rm my_container || true

echo "Container stopped and removed." | tee -a /var/log/codedeploy-agent/stop_container.log
