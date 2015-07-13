Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users
  
  resources :posts, only: [:index, :new, :create, :show] do
    resources :comments, only: [:create]
    post "upvote"
    post "downvote"
  end

  resources :users, only: [:show]
  
end
