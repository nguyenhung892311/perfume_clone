Rails.application.routes.draw do
  devise_scope :user do
    get "users", to: "devise/sessions#new", as: 'user_login'
    get 'admin', to: 'devise/sessions#new', as: 'admin_login'

  end
  devise_for :users

  namespace :admin do
    get '', to: 'dashboard#index'
    resources :dashboard
    resources :articles
    resources :users

  end

  namespace :api do
    namespace :v1 do
      resources :articles, only: [:index]
      post '/auth/login', to: 'authentication#login'
    end
  end

  namespace :client do
    resources :articles
    resources :users

  end

  root 'site#index'
end
