class Api::ProductsController < ApplicationController

  def product_all
    @products = Product.all
    render 'product_all.json.jb'
  end

  def product_individual
    @product = Product.all[0]
    render 'product_individual.json.jb'
  end
end
