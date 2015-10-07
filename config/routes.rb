Rails.application.routes.draw do
  resources :visitors, only: [:index, :create, :destroy], defaults: {format: :json}
  root to: "visitors#index"
  resources :pictures

  resources :media_contents
  delete 'delete_media', to: "media_contents#delete_media"
end
