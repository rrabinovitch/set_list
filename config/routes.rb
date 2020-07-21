Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/', to: 'welcome#index'
  root 'welcome#index'

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/profile', to: 'users#show'

  get '/songs', to: 'songs#index'
  get '/songs/:id', to: 'songs#show'
  get '/artists', to: 'artists#index'
  get '/artists/new', to: 'artists#new'
  # ^ takes us to a page that gathers the data for a new artist
  post '/artists', to: 'artists#create'
  # ^ uses data gathered from form to create the new artist record
  delete '/artists/:id', to: 'artists#destroy'
  get '/artists/:id/edit', to: 'artists#edit'
  patch '/artists/:id', to: 'artists#update'
  get '/artists/:id', to: 'artists#show'

  get '/artists/:artist_id/songs/new', to: 'songs#new'
  post '/artists/:artist_id/songs', to: 'songs#create'

  get '/playlists', to: 'playlists#index'

  patch '/cart/:song_id', to: 'cart#update'

  namespace :admin do
    # only admin users will be able to reach this resource
    get '/dashboard', to: 'dashboard#index'
  end
end
