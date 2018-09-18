Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'user_sessions#new'

get 'login' => 'user_sessions#new', :as => :login
delete 'logout' => 'user_sessions#destroy', :as => :logout

resources :user, only: [:new, :create, :show]

resources :users, only: [:create]
# Without the create, the user/new page (to create an account fails to resolve)

resources :tickets, only: [:new, :create, :show, :delete]


end
