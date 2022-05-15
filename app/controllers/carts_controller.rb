class CartsController < ApplicationController
  def new
    @boat = Boat.find(params[:boat_id])
    @cart = Cart.new
  end

  def create
    @boat = Boat.find(params[:boat_id])
    @cart = Cart.new(cart_params)
    @cart.boat = @boat
    @cart.user = current_user
    if @cart.save
      redirect_to cart_path(@cart)
    else
      render 'new'
    end
  end

  # def destroy
  #   @cart.destroy
  #   redirect_to boats_path
  # end

  # def remove_cart_item
  #   boat = Boat.find(params[:id])
  #   @cart = find_cart
  #   @cart.remove_boat(boat)
  #   redirect_to_index("The item was removed")
  # end

  private

  def cart_params
    params.require(:cart).permit(:total_price, :boat_id, :user_id)
  end
end
