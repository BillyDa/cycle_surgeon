Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'user_sessions#new'

get 'login' => 'user_sessions#new', :as => :login
delete 'logout' => 'user_sessions#destroy', :as => :logout

resources :user, only: [:new, :create]
# Cyclist.. if logged in
# Go to tickets#new

resources :tickets, only: [:new, :create, :show, :delete]
# Surgeon... if logged in
# go to tickets#show

end
