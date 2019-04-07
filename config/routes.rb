Rails.application.routes.draw do
  resources :applications
  resources :comments
  resources :scrim_ads
  root to: 'homes#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
