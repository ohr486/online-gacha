Rails.application.routes.draw do
  get "/yapc" => redirect("/")

  namespace :admin do
    resources :rewards
    resources :users
    resources :results
  end

  root to: 'home#index'
  get 'home/index'
  get 'home/result'
  get 'gacha/pre'
  get 'gacha/effect'
  get 'gacha/result'
  get 'gacha/accept'

  get "/auth/:provider/callback", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
end
