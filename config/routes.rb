Rails.application.routes.draw do

  get 'authentications/register'

  get 'authentications/login'

  resources :users
  scope :api do
    resources :users, except: [:create]
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
end
