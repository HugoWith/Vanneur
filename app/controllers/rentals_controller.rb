class RentalsController < ApplicationController
  def create
    @rental = Rental.new
    @van = Van.find(params[:van_id])
    @rental.van = @van
    @rental.owner = @van.owner
    @rental.rental_date = @van.availability
    @rental.customer = current_user
    @rental.save
    redirect_to dashboards_path
  end

  def destroy
    @rental = Rental.find(params[:id])
  end
end
