Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root 'pages#home'
  get 'pages/admins'
  get 'pages/users'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
