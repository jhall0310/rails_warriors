Rails.application.routes.draw do

  get 'convos/new'

  get 'convos/create'

  get 'convos/edit'

  get 'convos/destory'

  get 'convos/update'

  root to: 'blogs#index'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'blogs/index'

  get 'blogs/update'

  get 'blogs/create'

  get 'blogs/destroy'

  get 'users/index'

  get 'users/update'

  get 'users/create'

  get 'users/destroy'

resources :blogs do
  resources :convos
end


get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'

get '/signup' => 'users#new'
post '/users' => 'users#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
