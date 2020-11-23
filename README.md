This is a project utilizing docker containers to run a full stack application including CI/CD pipeline , frontend UI + backend database with Ansible configuration management. All containers have persisted volumes (as specified in docker-compose file).

Container 1: Jenkins CI/CD - this container serves as the CI/CD pipeline in this project and the Ansible controller for configuration management. All jobs run through this container.

Container 2: Remote_host container this is the container responsible for private automated backups of our database to an already existing AWS s3 bucket.

Container 3: MySQL container serving as our database. (Back end)

Container 4: NGINX webserver for our UI. (Front end) 

Shell scripts: AWS-S3.sh- for automated backups of db data to AWS s3 bucket + dbscript.sh- for automated imports of data to existing database.

Ansible playbooks: people.yml - for transferring template to webserver , dockerplaybook.yml - for testing 

Dockerfiles: for image specifications that are used in unison with the main docker-compose file for our main containers.

nginx conf / bin files for necessary UI configurations + tables.j2 for showing frontend DB quieries. 
