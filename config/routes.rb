Rails.application.routes.draw do

  root 'users#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  

  resources :users do
    resources :posts
    resources :ratings
  end

resources :conversations do
  resources :messages
 end


  get '/home' => 'users#index'


end
