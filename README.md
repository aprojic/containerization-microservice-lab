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

## ### Running and Containerizing a Demo Application
### Installation of Required Prerequisites and Libraries

-   Install necessary tools and libraries
	> An installation script is available in the repository.

	```
	foo@bar:~$chmod +x ./setup_env.sh
	chmod +x ./setup_env.sh
	```

### Demo Application Setup

-   The script prepares a demo application, **PetClinic** ([GitHub Repository](https://github.com/spring-projects/spring-petclinic.git)), written in the Spring Boot framework.
> As part of the setup, the application is built and a JAR file is generated.

### Containerizing the Application

You need to containerize the application using following method (or find a different one):

1.  **Simple Solution**
    
    -   Use the available JAR artifact in the environment to containerize the application.

2.  **Deployment and running the application**
    
    -   Run the containerized application and expose it on port 8080.

### Verification

-   Check that the application is accessible in your browser.
	
⚠️ **Critical Reminder:** **To avoid unexpected costs, always remember to STOP or DELETE your Codespace when you're done!**  
Leaving it running can lead to unnecessary charges, so make it a habit to shut down any unused Codespaces.
