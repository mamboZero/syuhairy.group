Rails.application.routes.draw do

  devise_for :users
  
  root 'agents#index'
  resources :plans
  resources :dependents
  resources :spouses
  resources :agents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
