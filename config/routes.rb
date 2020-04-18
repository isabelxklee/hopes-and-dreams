Rails.application.routes.draw do  
  root 'welcome#home'

  ######### users ##########

  get "signup", to: "users#new", as: "signup"
  get '/users/login', to: 'users#login', as: 'login'
  post '/users/login', to: 'users#handle_login'
  post '/logout', to: 'users#logout', as: 'logout'

  post '/users/', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete 'users/:id', to: "users#destroy"

  ######### hopes ##########

  get "/hopes", to: "hopes#index", as: "hopes"
  get "/hopes/new", to: "hopes#new", as: "new_hope"
  get "/hopes/:id", to: "hopes#show", as: "hope"

  post "/hopes", to: "hopes#create"
  get "/hopes/:id/edit", to: "hopes#edit", as: "edit_hope"
  patch "/hopes/:id", to: "hopes#update"
  delete "/hopes/:id", to: "hopes#destroy"

    ######### dreams ##########

    get "/dreams", to: "dreams#index", as: "dreams"
    get "/dreams/new", to: "dreams#new", as: "new_dream"
    post "/dreams", to: "dreams#create"
    get "/dreams/:id", to: "dreams#show", as: "dream"
    get "/dreams/:id/edit", to: "dreams#edit", as: "edit_dream"
    patch "/dreams/:id", to: "dreams#update"
    delete "/dreams/:id", to: "dreams#delete"

end