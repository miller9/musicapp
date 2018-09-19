Rails.application.routes.draw do
  devise_for :users
  get 'spotify/search'
  
  resources :tracks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :playlists # Adding new 7 standard routes

	root to: 'tracks#index'


end
