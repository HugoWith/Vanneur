class VansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:search, :show, :index]
  before_action :set_van, only: [:show, :edit, :update]

  def index
    @vans = Van.all
    @vans_geo = Van.geocoded
    @markers = @vans_geo.map do |van|
      {
        lat: van.latitude,
        lng: van.longitude
      }
    end
  end

  def show
  end

  def new
    @van = Van.new
  end

  def create
    @van = Van.new(vans_params)
    @van.owner = current_user
    if @van.save!
      redirect_to dashboards_path(@van)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @van.update(vans_params)
    redirect_to vans_path
  end

  def destroy
  end

  def search
    @vans = Van.new
  end

  private

  def set_van
    @van = Van.find(params[:id])
  end

  def vans_params
    params.require(:van).permit(:town, :pictures, :description, :prices, :availability, :year, :kilometers, :hyppyness, :picture_cache)
  end
end
