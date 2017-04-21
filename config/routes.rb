Rails.application.routes.draw do

  get 'relationships/follow_user'

  get 'relationships/unfollow_user'

  get 'oauth/facebook'

  get 'authentications/register'

  get 'authentications/login'

  resources :users
  scope :api do
    resources :users, except: [:create]
    resources :pylons
    resources :listings
    resources :categories
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    post 'auth/facebook', to: 'oauth#facebook'
    post 'events', to: 'events#get_events'
    post ':user_name/follow_user', to: 'relationships#follow_user', as: :follow_user
    post ':user_name/unfollow_user', to: 'relationships#unfollow_user', as: :unfollow_user
    get 'feed', to: 'pylons#feed'
  end
end
