Rails.application.routes.draw do

  root 'users#new'

  resource :users, :only => [:new, :create]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :bikes, only: [:index]


end
