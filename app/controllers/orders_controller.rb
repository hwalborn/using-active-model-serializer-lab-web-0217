class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @author = Author.find(params[:id])
    respond_to do |f|
      f.html {render :show}
      f.json {render json: @author}
    end
  end
end
