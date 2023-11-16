# Rails.application.routes.draw do
#   resources :lists, only: [:index, :new, :show, :create]
#   root to: "lists#index"
#   resources :lists do
#     resources :bookmarks, only: [:new, :create]
#   end
#   resources :bookmarks, only: :destroy
# end


Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
