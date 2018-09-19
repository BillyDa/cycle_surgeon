Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'user_sessions#new'

  get 'login' => 'user_sessions#new', :as => :login

  get 'index' => 'tickets#index', :as => :index

  delete 'logout' => 'user_sessions#destroy', :as => :logout

  resources :user_sessions, only: [:create]

  resources :users, only: [:new, :create, :show]

  resources :tickets, only: [:new, :index, :create, :show, :destroy]


end
