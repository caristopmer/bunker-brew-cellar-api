Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/beers' => 'beers#index'
  post '/beers' => 'beers#create'

  get '/beers/:id/takeone' => 'beers#take'
  put '/beers/:id/restock' => 'beers#restock'

  get '/breweries' => 'breweries#index'
  post '/breweries' => 'breweries#create'

  get '/styles' => 'styles#index'
  post '/styles' => 'styles#create'

  get '/selections' => 'selections#most_popular'
end
