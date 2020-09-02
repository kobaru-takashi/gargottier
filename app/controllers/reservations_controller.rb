class ReservationsController < ApplicationController

  def index
    @events = Event.find(params[:event_id])
  end

  private
  def product_params
    params.require(:product).permit(:reservation_time, :number_of_people)
  end
end
