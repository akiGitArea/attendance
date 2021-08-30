Rails.application.routes.draw do
  get 'tennis_conreoller/tennis'
  root  'tennis_conreoller#tennis'
  #resources :tennis_conreoller
  #root 'tennis_conreoller/tennis'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
