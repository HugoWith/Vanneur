class VansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:search, :show, :index]
  before_action :set_van, only: [:show, :edit, :update]

  def index
    @vans = Van.all
    filter_by_town
    filter_by_availability
    filter_by_hippyness

    @vans_geo = @vans.geocoded
    @markers = @vans_geo.map do |van|
      {
        lat: van.latitude,
        lng: van.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { van: van }),
        image_url: helpers.asset_url('noun_Van_1779339.svg')
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
    params.require(:van).permit(:town, :pictures, :description, :prices, :availability, :year, :kilometers, :hippyness, :picture_cache)
  end

  def filter_by_availability
    return if params[:availability] == [""] || params[:availability].nil? || params[:availability].blank?
    @vans = @vans.where(availability: params[:availability])
  end

  def filter_by_town
    return if params[:town].blank?
    # p @vans
    @vans = @vans.where("town ilike ?", "#{params[:town].split(',').first}")
    # p @vans
    # p params[:town]
  end

  def filter_by_hippyness
    if params[:hippyness].present?
      @vans = @vans.where("hippyness = ?", true)
    else
      return
    end
  end
end
