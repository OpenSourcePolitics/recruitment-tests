# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Quick Start

        yarn install or npm install
        bundle install
        rake db:create
        rake db:migrate   
        rails -s

# DEV NOTES

* Ruby version
2.6.6

* New App

		rails new level-r 

		cd level-r


* GemFile update

		GemFile: gem 'devise'


then: 

		bundle install

* Configuration

		rails generate devise:install

		rails g devise:views

		rails generate devise User

		rails g controller StaticPages welcome

 
Modifier app/views/layouts/application.html.erb pour login/register
Modifier app/views/static_pages/welcome.html.erb pour la première page

* Database creation

rake db:create

* Database initialization

rake db:migrate



* add adress field to user

rails generate migration add_address_to_users address:string

rake db:migrate


* Add OpenStreet Map and Leaflet 

gem 'open_street_map'

gem 'leaflet-rails'

Edit app/assets/stylesheets/application.css
	// = require leaflet
	
Create app/assets/javascripts/application.js
	// = require leaflet

Edit app/views/layouts/application.html.erb
	<%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>

Conversion addresse -> Coordonnées exactes
    client = OpenStreetMap::Client.new
    s = client.search(q: current_user.address, format: 'json', addressdetails: '1', accept_language: 'fr')



* External documentation

https://medium.com/@greenboyroshan/creating-user-signin-and-signup-in-rails-6-using-gem-devise-part-i-334745e4cd9b
https://medium.com/@rachid1982fsb/rails-app-authentication-using-devise-98f131ce0199
https://medium.com/@mchisti/creating-simple-users-in-rails-with-devise-gem-tutorial-cd91d2ef36d5

https://human-se.github.io/rails-demos-n-deets-2020/demo-static-pages/
+ https://human-se.github.io/rails-demos-n-deets-2020/demo-devise-auth/
+ https://github.com/human-se/quiz-me-2020

https://www.bogotobogo.com/RubyOnRails/RubyOnRails_Devise_Adding_User_Field_and_Customization_Update_Saved.php (attention Rails 4, ajustements à faire)
cf https://stackoverflow.com/questions/38215274/devise-nomethoderror-for-parametersanitizer

https://github.com/WebGents/open_street_map
https://github.com/axyjo/leaflet-rails
https://leafletjs.com/examples/quick-start/

