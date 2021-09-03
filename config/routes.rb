Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'users/show'
  get 'home/top'
  get 'home/index'
  root 'home#top'
  resource :user, only: [:new, :create, :show]
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"
  
  #get 'tennis_conreoller/tennis'
  #root  'tennis_conreoller#tennis'
  
  #resources :tennis_conreoller
  #root 'tennis_conreoller/tennis'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
