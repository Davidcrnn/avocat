Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/mentions-legales' => 'pages#mentions'
  get '/expertise' => 'pages#domaines'
  get '/valeurs' => 'pages#valeurs'
  get '/equipe' => 'pages#equipe'

  resources :actualites
  resources :cabinets, only: [:index]
  resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
