Rails.application.routes.draw do

  get 'client/new'

  resources :journeys, only: [:new, :create, :show, :index] do
    resources :details, only: [ :new, :create ]
    resources :clients, only: [ :new, :create ]
    resources :charges, only: [:new, :create]
  end
  root to: 'journeys#new'

  get 'pages/contact'
  get 'pages/about'
  get 'pages/faq'
  get 'pages/testimonials'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
