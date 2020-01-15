Rails.application.routes.draw do


get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

resources :users

resources :cocktails do
  resources :comments
end

delete 'cocktails/:id', to: "cocktails#delete", as: :delete_cocktail
end
