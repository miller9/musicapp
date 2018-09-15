Rails.application.routes.draw do
  resources :tracks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :playlists # Adding new 7 standard routes
end
