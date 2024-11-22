# Lab for containerization and microservices workshop

## Getting Started 
### Follow these steps to launch the Docker environment in GitHub Codespaces:

1.  Fork the Repository 
	> 	Fork this repository to your GitHub account to create your own working copy.
    
2.  Launch a Codespace 
	> Go to your forked repository on GitHub. 
	> Click on Code > Codespaces > Create codespace on main. 
	> Wait for the Codespace to initialize. The setup may take a few minutes.
    
3.  Verify Docker Setup 
	> Once the Codespace is ready, open the terminal and run the following commands to verify that Docker and Docker Compose are available:
	```
	foo@bar:~$docker --version
	foo@bar:~$docker-compose --version
	foo@bar:~$docker run hello-world
	```
4. Run Your First Docker Container 
	> To test the Docker setup, you can run a sample NGINX container:
	```
	foo@bar:~$docker run -d -p 8080:80 nginx
	```
	>Open the Ports tab in Codespaces to view and access the running NGINX container on port 8080.

5.  Stopping and Cleaning Up 
	> When you’re done, stop any running containers with:
	```
	foo@bar:~$docker stop <container_id>
	```

To avoid additional costs, remember to stop or delete your Codespace when you’re finished.