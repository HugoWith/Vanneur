class RentalsController < ApplicationController
  def create
    @rental = Rental.new
    @van = Van.find(params[:van_id])
    @rental.van = @van
    @rental.rental_date = @van.availability
    @rental.customer = current_user
    @rental.save

    redirect_to dashboards_path, booking_success: "Van bien réservé, bonnne route!😎"
  end

  def destroy
    @rental = Rental.find(params[:id])
  end
end
