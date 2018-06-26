class OrdersController < ApplicationController
  def index
  	@orders = Order.all
  end

  def new 
  end

  def create
  	@order = Order.new(order_params)
  	if @order.save
      redirect_to root_path
  	else
  	end
  end

  def show
    @order = Order.find(params[:id])
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update_attributes!(order_params)
    redirect_to order_path(@order)
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to root_path
  end

  private 

    def order_params
      params.require(:order).permit(:id, :last_name, :first_name,
        :status, :monument, :monument_ordered?, :cemetery,
        :date_ordered, :date_set, :ordered_by, :address, :phone_number,
        :email, :total_fees, :balance_due)
    end
end
