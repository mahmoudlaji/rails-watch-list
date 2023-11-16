Rails.application.routes.draw do
  resources :lists, only: [:index, :new, :show, :create]
  root to: "lists#index"
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
end
