Rails.application.routes.draw do
  root "movies#index"

  resources :movies, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    patch :toggle_status, on: :member
  end
  resources :directors, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :genres, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
