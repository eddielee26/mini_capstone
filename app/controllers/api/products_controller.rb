class Api::ProductsController < ApplicationController

  def index
    @products_index = Product.all.order(:id)
    if params[:search]
      @products_index = @products_index.where("name iLIKE ?", "%#{params[:search]}%")
    end

    if params[:discounted]
      @products_index = @products_index.where("price < ?", 5)
    end

    if params[:sort] == "price" && params[:sort_order] == 'asc'
      @products_index = @products_index.order(:price)
    elsif params[:sort] == "price" && params[:sort_order] == "desc"
      @products_index = @products_index.order(price: :desc)
    else 
      @products_index = @products_index.order(:id)
    end
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
      # image_url: params[:image_url],
      description: params[:description]
    )
    if @product.save
      render 'product_show.json.jb'
    else 
      render json: {errors: @product.errors.full_messages}, status: 422
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.id = params[:id] || @product.id
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    # @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    if @product.save
      render 'product_show.json.jb'
    else 
      render json: {errors: @product.errors.full_messages}, status: 422
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Recipe destroyed!"}
  end
end
