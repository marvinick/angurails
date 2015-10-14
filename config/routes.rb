Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  resources :places

  resources :locations
  root to: "locations#index" 

  resources :posts do
    resources :pictures
  end

  resources :pictures

  resources :visitors
end
