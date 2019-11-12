class DashboardsController < ApplicationController

  def new
    @vans
  end

def index
  @vans = Van.all
end


  def create
  end

end
