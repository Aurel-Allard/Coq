Rails.application.routes.draw do

  get 'client/new'

  resources :journeys, only: [:new, :create, :show, :index] do
    resources :details, only: [ :new, :create ]
    resources :clients, only: [ :new, :create ]
    resources :charges, only: [:new, :create]
  end
  resources "contacts", only: [:new, :create]

  root to: 'journeys#new'

  match '/sejours', to: 'details#new', via: 'get'
  match '/contacts', to: 'contacts#new', via: 'get'

  get 'pages/about'
  get 'pages/faq'
  get 'pages/testimonials'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
