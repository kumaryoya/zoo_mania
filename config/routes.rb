Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  namespace :admin do
    root to: 'top#index'
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'
    resources :users, only: %i[index show edit update destroy]
    resources :posts, only: %i[index show edit update destroy]
  end
  root "top#index"
  get 'privacy_policy', to: 'top#privacy_policy'
  get 'terms_of_service', to: 'top#terms_of_service'
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  post 'google_login_api/callback', to: 'google_login_api#callback'
  post '/callback' => 'linebot#callback'
  resource :profile,only: %i[show edit update]
  resources :users, only: %i[new create destroy] do
    resource :password, only: %i[edit update]
    resources :favorite_zoos, only: %i[new create destroy]
  end
  resources :zoos, only: %i[index show] do
    collection do
      get 'ranking'
      get "recommend"
    end
  end
  resources :password_resets, only: %i[new create edit update]
  resources :posts, only: %i[index new create show edit update destroy] do
    resource :likes, only: %i[create destroy]
    collection do
      get 'ranking'
      get 'my_posts'
      get 'my_like_posts'
      get "stamp_rally"
    end
  end
end
