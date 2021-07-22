Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
    resources :movies, only: :show
  end

  resources :bookmarks, only: [:destroy]
end
