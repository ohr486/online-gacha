Rails.application.routes.draw do
  get 'gacha/pre'
  get 'gacha/effect'
  get 'gacha/result'
  get 'gacha/accept'
  get 'gacha/pre'
  root to: 'home#index'
  get 'home/index'
  get 'home/result'
  get 'gacha/effect'
  get 'gacha/result'
end
