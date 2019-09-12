class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def index
    @orders = current_user.orders
    # @orders = Order.all
    render 'order_index.json.jb'
  end

  def show
    @order = Order.find_by(id: params[:id])
    render 'order_show.json.jb'
  end

  def create
    product = Product.find(params[:product_id])

    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09

    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )
    if @order.save
      render 'order_show.json.jb'
    else
      render json: {errors: @order.errors.full_messages}, status: 422
    end
  end

end
