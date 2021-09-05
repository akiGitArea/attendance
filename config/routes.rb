Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'users/show'
  get 'home/top'
  get 'home/index'
  # get 'tennis_conreoller/create'
  root 'home#top'
#  resource :user, only: [:new, :create, :show]
  resource :user, only: [:new, :show]
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"

  post 'create', to: "tennis_conreoller#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
