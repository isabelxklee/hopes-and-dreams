Rails.application.routes.draw do
  resources :hopes
  resources :dreams
  resources :users
  
  # get "/hopes", to: "hopes#index", as: "hopes"
  # get "/hopes/new", to: "hopes#new", as: "new_hope"
  # post "/hopes", to: "hopes#create"
  # get "/hopes/:id", to: "hopes#show", as: "hope"
  # get "/hopes/:id/edit", to: "hopes#edit", as: "edit_hope"
  # patch "/hopes/:id", to: "hopes#update"
  # delete "/hopes/:id", to: "hopes#delete"
end
