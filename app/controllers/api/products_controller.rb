class Api::ProductsController < ApplicationController

  def index
    @products_index = Product.all
    render 'product_index.json.jb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'product_show.json.jb'
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    @product.save
    render 'product_show.json.jb'
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.id = params[:id] || @product.id
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    
    @product.save
    render 'product_show.json.jb'
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Recipe destroyed!"}
  end
end
