Rails.application.routes.draw do

  resources :posts, only: [:index, :create, :destroy, :show], defaults: {format: :json}

  resources :visitors, only: [:index, :create, :destroy], defaults: {format: :json}
  root to: "visitors#index"
  resources :pictures


end
