Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'users/show'
  get 'home/top'
  get 'home/index'
  get 'manage_schedules/manage_schedule'
  get 'manage_users/manage_user'
  root 'home#top'
  resource :user, only: [:new, :show]

  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"

  post 'create', to: "tennis_conreoller#create"
  post 'change', to: "tennis_conreoller#change"
  post 'update', to: "manage_schedules#manage"

  post 'create_user', to: "tennis_conreoller#create_user"
  post 'update_user', to: "manage_users#manage"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
