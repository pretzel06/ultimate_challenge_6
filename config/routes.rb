Rails.application.routes.draw do
  # get 'customers', to: 'customers#index'
  # get 'customers/:id', to: 'customers#show'
  resources :customers, only: [:index, :show, :alphabetized, :missing_email]

  resources :alphabetized do
    member do
      get '/customers/alphabetized'
    end
  end

  resources :missing_email do
    member do
      get '/customers/missing_email'
    end
  end
  root to: 'customers#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
