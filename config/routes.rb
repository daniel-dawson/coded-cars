Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Root route (Home)
  root to: 'welcome#home'

  # Devise routes
  devise_for :admins

  resources :ownership_histories
  resources :cars
  resources :owners
end
