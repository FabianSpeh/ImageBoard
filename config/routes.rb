Rails.application.routes.draw do
  devise_for :users
  get 'board/index'
  resources :posts
  root to: 'board#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
