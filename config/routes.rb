Rails.application.routes.draw do
  devise_for :users
  get 'board/index'
  resources :posts do
    member do
      patch "upvote", to: "posts#upvote"
    end
    resources :comments
  end

  root to: 'board#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
