class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to boat_path(@list)
    else
      render 'new'
    end
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = current_account.Boat.find(params[:id])
    @boat.update!(boat_params)
    redirect_to @boat
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :price)
  end
end