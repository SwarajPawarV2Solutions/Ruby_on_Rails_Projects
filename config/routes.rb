Rails.application.routes.draw do

  devise_scope :user do
    get '/users', to: 'devise/registrations#new'
    get '/users/password', to: 'devise/passwords#new'
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  devise_for :users
   get '/users/sign_in', to: 'devise/sessions#new'

  get 'home/about'

  get 'posts/myposts'
  resources :posts
  
   root "posts#index"
end
