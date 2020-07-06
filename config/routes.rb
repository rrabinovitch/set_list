Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
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
  get '/artists/:artist_id/songs/new', to: 'songs#new'
  post '/artists/:artist_id/songs', to: 'songs#create'
end
