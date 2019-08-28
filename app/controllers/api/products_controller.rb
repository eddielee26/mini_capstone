class Api::ProductsController < ApplicationController

  def product_all
    @message = "sanity check"
    render 'product_all.json.jb'
  end
end
