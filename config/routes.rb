Rails.application.routes.draw do
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

  # scope :admin do
  #   devise_for :admins, only: :registrations, path: '', path_names: {
  #     edit: 'profile/edit'
  #   }, controllers: { registrations: 'admins/registrations' }
  # end

  devise_for :admins, skip: :registrations, path: '', controllers: {
    sessions: 'admins/sessions', passwords: 'admins/passwords'
  }


  resources :cars
  resources :owners

  resources :ownership_histories
end
