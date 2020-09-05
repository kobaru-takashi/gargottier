class ReservationsController < ApplicationController
  before_action :set_reservation

  # def index
  #   @events = Event.find(params[:event_id])

  # end
  # def new
  #   @events = Event.find(params[:event_id])
  # end

  # private
  # def product_params
  #   params.require(:product).permit(:reservation_time, :number_of_people)
  # end
  def new
    @events = Event.find(params[:event_id])
    @reservation = Reservation.new


  end
  def confirm
    @events = Event.find(params[:event_id])
    @reservation = Reservation.new(reservation_params)
    return if @reservation.valid?
    # render :new
  end

  def back
    @events = Event.find(params[:event_id])
    @reservation = Reservation.new(reservation_params)
    render :new
  end

  def create
    @events = Event.find(params[:event_id])
    event_id = Event.find(params[:event_id])
    @reservation = Event.select('id')
    Reservation.create!(reservation_params)
    render :complete

  end
  private
  def reservation_params
    params.require(:reservation).permit(:reservation_time, :number_of_people,:family_name,:first_name,:family_name_kana,:first_name_kana,:phone_number, :email, :request, :event_id)
  end

  def set_reservation
    @events = Event.find(params[:event_id])

  end
end
