class DashboardsController < ApplicationController

def new
    @van = Van.new
end

def create
    @van = Van.new(cocktail_params)
    if @van.save
      redirect_to dashboards_path
    else
      render :new
    end
end

private

def vans_params
    params.require(:van).permit(:town, :pictures, :prices, :availability, :year, :kilometers, :hyppyness)
  end
end
