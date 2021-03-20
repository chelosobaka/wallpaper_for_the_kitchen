Rails.application.routes.draw do
  resources :users, path: 'order'

  get '/users/:id', to: 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
