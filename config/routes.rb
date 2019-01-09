Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/index'
  get 'home/result'
  get 'gacha/effect'
  get 'gacha/result'
end
