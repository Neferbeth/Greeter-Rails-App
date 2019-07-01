Rails.application.routes.draw do
  # get 'errors/not_found'
  # get 'errors/internal_server_error'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  root 'application#welcome'

  get "*any", via: :all, to: "errors#not_found"
  get "/404", to: "errors#not_found"

  # match "/404", :to => "errors#not_found", :via => :all
  # match "/500", :to => "errors#internal_server_error", :via => :all

  # get '/users' => 'users#index'
  #
  # #get '/users/new' => 'users#new'
  #
  # post 'users' => 'users#create'



end
