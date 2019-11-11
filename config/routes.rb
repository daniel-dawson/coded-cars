Rails.application.routes.draw do
  resources :ownership_histories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Root route (Home)
  root to: 'welcome#home'

  # Devise routes
  devise_scope :admin do
    get 'sign_up/cancel', to: 'admins/registrations#cancel', as: 'cancel_admin_registration'
    get 'sign_up', to: 'admins/registrations#new', as: 'new_admin_registration'
    get 'profile/edit', to: 'admins/registrations#edit', as: 'edit_admin_registration'
    patch 'admin', to: 'admins/registrations#update', as: 'admin_registration'
    put 'admin', to: 'admins/registrations#update'
    delete 'admin', to: 'admins/registrations#destroy'
    post 'admin', to: 'admins/registrations#create'
  end

  devise_for :admins, skip: :registrations, path: '', controllers: {
    sessions: 'admins/sessions', passwords: 'admins/passwords'
  }

  resources :owners do
    resources :ownership_histories, except: [:index]
  end

  resources :cars do
    resources :ownership_histories, only: [:show, :edit, :update]
  end

  resources :ownership_histories, only: [:index, :show, :edit, :update]
end
