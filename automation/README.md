# Terraform

## Deploy infrastructure on Scaleway

Complete the `main.tf` Terraform file in charge of creating the following infrastructure using the Scaleway provider :

- **Instance** 
    - name : decidim-app
    - type : DEV1-M
    - image :  Ubuntu Focal

- **Security Group**
    - name: decidim-app-sg
    - Accept rule on port HTTP
    - Accept rule on port HTTPS


You will need to create a public IP address to be assigned to the created server and also bind the created security group on this same server


## Questions

**Which command launches the Terraform deployment?**

    Answer ->

**Which command previews the deployment before it is executed?**
    
    Answer ->

**A client requests the shutdown and removal of his environment. His infrastructure is managed by Terraform. What steps should be taken before complying with his request and which command will allow the removal of his infrastructure?**

    Answer ->

# Docker

## Create a Docker image of a Ruby on Rails application

Write a Dockerfile to deploy a basic Rails application

- In this directory, initialize your first Ruby on Rails application called ***rails-on-docker***
- Add your Dockerfile to the Ruby on Rails application folder

# Ansible

## Deploy Ruby on Rails basic configuration

Create an Ansible playbook in charge of installing the following stack :

- Classic Ruby on Rails configuration
- PostgreSQL
- Nginx
- Fail2Ban
- Sidekiq
- Redis
- Passenger