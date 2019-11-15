class DashboardsController < ApplicationController
  def index
    @vans = Van.all
    @owned_vans = current_user.vans
    # on devra differencier dans la vue le dashboard locataire et proprietaire,
    # en gerant le cas du proprietaire locataire
  end

  def owned
    @owned_vans = current_user.vans
  end

  def rented
    @rented_vans = current_user.rented_vans
  end

    def image
    if pictures.present?
      pictures
    else
    'https://images.unsplash.com/photo-1527786356703-4b100091cd2c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'    end
  end
end
