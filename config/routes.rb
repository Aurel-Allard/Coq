Rails.application.routes.draw do

  devise_for :users

  resources :journeys, only: [ :index,:new, :create, :show ] do
    resources :details, only: [ :new, :create ]
    resources :clients, only: [ :new, :create ]
    resources :charges, only: [ :new, :create ]
  end

  devise_scope :user do
    get "/login" => "devise/sessions#new"
    delete '/logout', to: 'devise/sessions#destroy'
  end

  resources "contacts", only: [:new, :create]

  root to: 'journeys#new'

  # match '/sejour', to: 'details#new', via: 'get'
  match '/contacts', to: 'contacts#new', via: 'get'

  get 'pages/about'
  get 'pages/faq'
  get 'pages/testimonials'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end