Rails.application.routes.draw do
  get 'oauth/facebook'

  get 'authentications/register'

  get 'authentications/login'

  resources :users
  scope :api do
    resources :users, except: [:create]
    resources :pylons
    resources :listings
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    post 'auth/facebook', to: 'oauth#facebook'
    post 'events', to: 'events#get_events'
  end
end
