class DashboardsController < ApplicationController
  def index
    @vans = Van.all
    # on devra differencier dans la vue le dashboard locataire et proprietaire,
    # en gerant le cas du proprietaire locataire
  end

  def owned
    @owned_vans = current_user.vans
  end

  def rented
    @rented_vans = current_user.rented_vans
  end
end
