class TrucksController < ApplicationController

  def index
  end

  # def new
  # end
  #
  # def create
  # end

  def show
    # need to add some sort of location thingy to show page
    @truck = Truck.find(params[:id])
    session[:truck] = @truck.id
  end

  # def edit
  # end
  #
  # def update
  # end

end
