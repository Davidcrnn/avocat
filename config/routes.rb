Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
  end
  get '/mentions-legales' => 'pages#mentions'
  get '/expertise' => 'pages#domaines'
  get '/valeurs' => 'pages#valeurs'

  resources :actualites
  resources :equipes
  resources :cabinets, only: [:index]
  resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
