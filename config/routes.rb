Rails.application.routes.draw do
  namespace :admin do
    root to: 'top#index'
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'
    resources :users, only: %i[index show edit update destroy]
    resources :posts, only: %i[index show edit update destroy]
  end
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  root "top#index"
  get 'privacy_policy', to: 'top#privacy_policy'
  get 'terms_of_service', to: 'top#terms_of_service'
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  post 'google_login_api/callback', to: 'google_login_api#callback'
  resource :profile,only: %i[show edit update]
  resources :users, only: %i[new create destroy] do
    resource :password, only: %i[edit update]
    resources :favorite_zoos, only: %i[new create destroy]
  end
  resources :zoos, only: %i[index show] do
    collection do
      get 'ranking', to: 'zoos#ranking'
    end
  end
  resources :password_resets, only: %i[new create edit update]
  resources :posts, only: %i[index new create show edit update destroy] do
    resource :likes, only: [:create, :destroy]
    collection do
      get 'ranking', to: 'posts#ranking'
      get 'my_posts', to: 'posts#my_posts'
      get 'my_like_posts', to: 'posts#my_like_posts'
    end
  end
end
