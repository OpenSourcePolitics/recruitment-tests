Rails.application.routes.draw do
  # get 'links/index'
  # get 'links/show'
  # get 'links/new'
  # get 'links/edit'

  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # go to localhost:3000/rails/info/routes to see all routes

  get '/', to: redirect('/links')
  resources :links
end
