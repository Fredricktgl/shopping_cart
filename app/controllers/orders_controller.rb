class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = current_user.orders.all
    user = current_user
    cart = current_user.orders.last
  end

  def edit
    @products = current_user.orders.last.products.all
    @uniq_products = current_user.orders.last.products.uniq
  end

end
