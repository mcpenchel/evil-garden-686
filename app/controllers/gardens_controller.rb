class GardensController < ApplicationController
  # GET /gardens
  def index
    @gardens = Garden.all
  end

  # GET /gardens/1
  def show
    @garden = Garden.find(params[:id])
    @plant  = Plant.new
  end
end
