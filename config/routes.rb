Rails.application.routes.draw do
  resources :venues
  devise_for :users
  resources :welcomeds

  root to: 'welcomeds#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
