class AvailableOrdersController < ApplicationController
  def index
    @available_orders = Order.pending
  end

  def create
    @order = Order.pending.find(params[:order_id])
    @order.update(chef_id: current_chef.id, status: :in_progress)
    redirect_to root_path, notice: "You have accepted the order successfully!"
  end
end
 