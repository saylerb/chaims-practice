Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "artists#index"
  get '/artist/:id', to: "artists#show", as: :artist_show
end
