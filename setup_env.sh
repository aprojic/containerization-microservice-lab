# Clone Spring PetClinic repo and modify docker-compose.yml file
echo -e "\n\e[38;2;226;0;116m=== Cloning Spring PetClinic repo and modifying docker-compose.yml file ===\e[0m\n"
git clone https://github.com/spring-projects/spring-petclinic.git 
cd spring-petclinic 
awk 'BEGIN{print "\n# This is docker-compose yaml file, add new services under \"services:\" block, keep the indentation consistant!\n# To start up defined services use \"docker compose up -d\"\n# Check running containers using \"docker ps\", and to see them all use \"-a\" flag\n\nversion: \"3.8\"\n\nservices:"} /^  postgres:$/,/^  mysql:/ {if ($1 == "postgres:") {print} else if ($1 == "mysql:") {next} else {print}}' docker-compose.yml > docker-compose-new.yml 
mv docker-compose-new.yml docker-compose.yml

# build Spring PetClinic app 
echo -e "\n\e[38;2;226;0;116m=== Building Spring PetClinic app ===\e[0m\n"
touch Dockerfile 
./gradlew bootJar 
mv ./build/libs/*.jar . 

echo -e "\n\e[38;2;226;0;116m********** These are the files you'll be working with **********\e[0m\n" 
ls -l

# Display success message
echo -e "\e[38;2;226;0;116m********** ██╗* ██╗████████╗ **********\e[0m" && echo -e "\e[38;2;226;0;116m********** ██║* ██║╚══██╔══╝ **********\e[0m" && echo -e "\e[38;2;226;0;116m********** ███████║** ██║*** **********\e[0m" && echo -e "\e[38;2;226;0;116m********** ██╔══██║** ██║*** **********\e[0m" && echo -e "\e[38;2;226;0;116m********** ██║* ██║** ██║*** **********\e[0m" && echo -e "\e[38;2;226;0;116m********** ╚═╝* ╚═╝** ╚═╝*** **********\e[0m" && echo -e "\e[38;2;226;0;116m********** YOU ARE READY TO GO ********\e[0m" && echo -e "\e[38;2;226;0;116m***************************************\e[0m\n"