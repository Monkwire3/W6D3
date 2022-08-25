Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #get '/users/:id/artworks', to: 'users#show_user_artworks'



  resources :users do 
     resources :artworks
  end

  resources :users, only: [:index, :show, :create, :update, :destroy]
  #resources :artworks, only: [:index, :show, :create, :update, :destroy]
  resources :artworks, only: [:show, :create, :update, :destroy]
  resources :artwork_shares, only: [:index, :create, :destroy]
  resources :comments, only: [:index, :create, :destroy]
end
