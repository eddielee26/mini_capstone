Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"
  get "/products" => "products#index"

  get "/products/new" => "products#new"
  
  post "/products" => "products#create"

  get "/products/:id" => "products#show"

  get "/products/:id/edit" => "products#edit"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do

    get "/products" => "products#index"

    get "/products/:id" => "products#show"

    post "/products" => "products#create"

    patch "products/:id" => "products#update"

    delete "products/:id" => "products#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/orders" => "orders#index"

    get "/orders/:id" => "orders#show"

    post "/orders" => "orders#create"

    post "carted_products" => "carted_products#create"

    get "/carted_products" => "carted_products#index"

    delete "/carted_products/:id" => "carted_products#destroy"
  end
end
