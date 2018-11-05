Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/songs', to: 'songs#index', as: 'songs'
  get '/songs/random', to: 'songs#random', as: 'random'
end
