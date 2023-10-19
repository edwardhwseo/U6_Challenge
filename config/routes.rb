Rails.application.routes.draw do
  get 'customers/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :customers, only: %i[index]
  root to: 'customers#index'
  get 'customers/alphabetized', to: 'customers#alphabetized'
  get 'customers/missing_email', to: 'customers#missing_email'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
