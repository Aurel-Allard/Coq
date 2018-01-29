Rails.application.routes.draw do

  resources :journeys, only: [:new, :create, :show, :index] do
    resources :details, only: [ :new, :create ]
  end
  root to: 'journeys#new'

  get 'pages/contact'
  get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
