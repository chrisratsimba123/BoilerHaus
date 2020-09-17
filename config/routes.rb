Rails.application.routes.draw do
  resources :songs
  resources :playlists
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  resources :artists, only: :create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
