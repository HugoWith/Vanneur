class DashboardsController < ApplicationController


def new
    @van = Van.new
end

def index
  @vans = Van.all  
end

def create
  @user = current_user.id
  @van = Van.new(vans_params)
  @van.owner = @owner

    if @van.save!
      redirect_to dashboards_path(@owner)
    else
      render 'dasboards/new'
    end
end

private

def vans_params
    params.require(:van).permit(:town, :pictures, :description, :prices, :availability, :year, :kilometers, :hyppyness)
end
end
