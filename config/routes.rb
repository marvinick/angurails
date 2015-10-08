Rails.application.routes.draw do

  devise_for :users
  resources :visitors, only: [:index, :create, :destroy], defaults: {format: :json}
  root to: "visitors#index"

  resources :posts

  resources :pictures

end
