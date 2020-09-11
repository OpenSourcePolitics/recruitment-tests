# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Quick Start
       
        bundle install  
        rake db:create  or  bundle exec rake db:create
        rake db:migrate   or  bundle exec rake db:migrate
        rake db:seed   or  bundle exec rake db:seed
         

# DEV NOTES

* Ruby version
v2.6.6

* System dependencies

* Configuration
 
        rails g model links url title body name
    
        rails g controller links index show new edit
    
Edit config/routes.rb

        Rails.application.routes.draw do
           resources :links
        end

* Database creation

        rake db:migrate

* Database initialization

edit db/seeds.rb
then
    
        rake db:seed


* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* External documentation used

https://medium.com/@nancydo7/ruby-on-rails-crud-tutorial-899117710c7a

https://fuzzyblog.io/blog/rails/2017/01/24/rails-tutorial-making-font-awesome-work-with-rails-5.html

