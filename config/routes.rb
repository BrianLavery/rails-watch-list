Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:create]
    resources :movies, only: :show
  end

  resources :bookmarks, only: [:destroy]
end
