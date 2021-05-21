Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  post '/home/guest_sign_in', to: 'home#guest_sign_in'
  get 'items/search'

  resource :profile, only: [:show, :edit, :update]
end
