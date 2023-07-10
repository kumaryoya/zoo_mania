Rails.application.routes.draw do
  root "top#index"
  get 'privacy_policy', to: 'top#privacy_policy'
  get 'terms_of_service', to: 'top#terms_of_service'
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  post 'google_login_api/callback', to: 'google_login_api#callback'
  resource :profile,only: %i[show edit update]
  resources :users, only: %i[new create] do
    resource :password, only: %i[edit update]
    resources :favorite_zoos, only: %i[new create destroy]
  end
  resources :zoos, only: %i[index show] do
    collection do
      get 'ranking', to: 'zoos#ranking'
    end
  end
end
