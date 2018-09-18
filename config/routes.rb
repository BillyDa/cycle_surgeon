Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'user_sessions#new'

get 'login' => 'user_sessions#new', :as => :login
delete 'logout' => 'user_sessions#destroy', :as => :logout

resources :user, only: [:new, :create, :show]

resources :users

resources :tickets, only: [:new, :create, :show, :delete]


end
