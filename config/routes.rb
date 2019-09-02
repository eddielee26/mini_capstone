Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    # get "/products_all" => "products#product_all"

    # get "/products_individual" => "products#product_individual"

    # get "/product" => "products#product_query"

    # get "/product/:id" => "products#product_query"

    get "/products" => "products#index"

    get "/products/:id" => "products#show"

    post "/products" => "products#create"

    patch "products/:id" => "products#update"

    delete "products/:id" => "products#destroy"
  end
end
