Rails.application.routes.draw do
  # get 'customers', to: 'customers#index'
  # get 'customers/:id', to: 'customers#show'
  resources :customers, only: [:index, :show]
  root to: 'customers#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
