Rails.application.routes.draw do

  resources :journeys, only: [:new, :create, :show, :index]
  root to: 'journeys#new'

  get 'pages/contact'
  get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
