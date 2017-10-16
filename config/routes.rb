Rails.application.routes.draw do

  root 'users#new'

  resources :bikes, only: [:index]

  resource :users, :only => [:new, :create]
end
