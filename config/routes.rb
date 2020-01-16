Rails.application.routes.draw do

root :to => "session#new"  


  get 'cocktails/map'
  get 'pages/map'
get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

resources :users

resources :cocktails do
  resources :comments
end

delete 'cocktails/:id', to: "cocktails#delete", as: :delete_cocktail
end
