class Api::ProductsController < ApplicationController

  # def product_all
  #   @products = Product.all
  #   render 'product_all.json.jb'
  # end

  # def product_individual
  #   @product = Product.all[0]
  #   render 'product_individual.json.jb'
  # end

  # def product_query
  #   product_id = params[:id]
  #   @product = Product.find_by(id: product_id)
  #   render 'product.json.jb'
  # end

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
      price: params[:price].to_i,
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
