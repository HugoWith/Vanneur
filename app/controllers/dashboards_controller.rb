class DashboardsController < ApplicationController
  def index
    @vans = Van.all
    # on devra differencier dans la vue le dashboard locataire et proprietaire,
    # en gerant le cas du proprietaire locataire
  end
end
