class VansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:search]

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

  def show
    @van = Van.find(params[:id])
  end

  def search
    @vans = Van.new
  end

  private

def vans_params
    params.require(:van).permit(:town, :pictures, :description, :prices, :availability , :year, :kilometers, :hyppyness)
end

end
