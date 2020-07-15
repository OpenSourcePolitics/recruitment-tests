Rails.application.routes.draw do
  get 'main/index' => 'main#index'
  post 'main/index' => 'main#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
