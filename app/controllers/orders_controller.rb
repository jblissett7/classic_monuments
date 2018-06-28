# frozen_string_literal: true

# Orders Controller
class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @status_array = ['Awaiting Payment', 'Awaiting Approval',
                     'Approved', 'Completed']
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      puts 'Saved'
      redirect_to root_path
    else
      puts 'Not Saved'
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def edit
    @status_array = ['Awaiting Payment', 'Awaiting Approval',
                     'Approved', 'Completed']
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
    params.require(:order).permit(
      :id, :last_name, :first_name,
      :status, :monument, :monument_ordered, :cemetery,
      :date_ordered, :date_set, :ordered_by, :address, :phone_number,
      :email, :total_fees_cents, :balance_due_cents
    )
  end
end
