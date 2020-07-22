Rails.application.routes.draw do
  devise_for :users
  root to: "main#index"
  get 'main/index' => "main#index"
  post 'main/index' => 'main#create'
  get 'address' => "main#address"
  post 'address' => "main#set_address"
  get '/:id' => "shortener/shortened_urls#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
