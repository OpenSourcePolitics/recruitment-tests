# Terraform

## Deploy infrastructure on Scaleway

Complete the Terraform file in charge of creating the following infrastructure using the Scaleway provider :

- **Instance** 
    - name : decidim-app
    - type : DEV1-M
    - image :  Ubuntu Focal

- **Security Group**
    - name: decidim-app-sg
    - Accept rule on port HTTP
    - Accept rule on port HTTPS


You will need to create a public IP address to be assigned to the created server and also bind the created security group on this same server

