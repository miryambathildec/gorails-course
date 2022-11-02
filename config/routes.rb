Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # about us
  get 'about-us', to: 'about#index', as: 'about'

  # edit and update password
  get 'passwords', to: 'passwords#edit', as: :edit_password
  patch 'passwords', to: 'passwords#update'

  # forgot the password
  get 'password/reset', to: 'password_reset#new'
  post 'password/reset', to: 'password_reset#create'
  get 'password/reset/edit', to: 'password_reset#edit'
  patch 'password/reset/edit', to: 'password_reset#update'

  # registration user
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  # log in user
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  # log out user
  delete 'logout', to: 'sessions#destroy'


  root to: 'main#index'
end
