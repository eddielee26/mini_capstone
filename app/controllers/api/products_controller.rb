class Api::ProductsController < ApplicationController

  def product_all
    @products = Product.all
    render 'product_all.json.jb'
  end
end
