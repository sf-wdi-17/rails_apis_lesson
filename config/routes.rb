Rails.application.routes.draw do
  root to: 'search#index'

  get '/search', to: 'search#index'
  get '/movie', to: 'search#movie'
end
