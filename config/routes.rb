Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:create]
    resources :comments, only: [:create]
    resources :movies, only: :show
  end

  resources :movies, only: [:new, :create, :index, :show]

  resources :bookmarks, only: [:destroy]
end
