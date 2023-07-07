Rails.application.routes.draw do
  root "top#index"
  get 'privacy_policy', to: 'top#privacy_policy'
  get 'terms_of_service', to: 'top#terms_of_service'
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  resource :profile,only: %i[show edit update]
  resources :users, only: %i[new create]
end
