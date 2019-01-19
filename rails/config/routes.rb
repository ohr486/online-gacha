Rails.application.routes.draw do
  namespace :admin do
    resources :rewards
    resources :users
  end

  root to: 'home#index'
  get 'home/index'
  get 'home/result'
  get 'gacha/pre'
  get 'gacha/effect'
  get 'gacha/result'
  get 'gacha/accept'

  get "/auth/:provider/callback", to: "session#create"
  get "/logout", to: "session#destroy"
end
