class CartsController < ApplicationController
  def new
    @cart = Cart.new
  end

  def create
    @cart = Cart.new(boat_params)
    if @cart.save
      redirect_to cart_path(@cart)
    else
      render 'new'
    end
  end

  def destroy
    @cart.destroy
    redirect_to boats_path
  end

  def remove_cart_item
    boat = Boat.find(params[:id])
    @cart = find_cart
    @cart.remove_boat(boat)
    redirect_to_index("The item was removed")
  end

  private

  def cart_params
    params.require(:cart).permit(:total_price)
  end
end
