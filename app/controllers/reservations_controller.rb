class ReservationsController < ApplicationController
  before_action :set_reservation

  def new
    @events = Event.find(params[:event_id])
    @reservation = Reservation.new
    
  end

  def confirm
    @events = Event.find(params[:event_id])
    if request.post?
      @reservation = Reservation.new(reservation_params)
      render :new if @reservation.invalid?
    else
      redirect_to new_event_reservations_path
    end
  end

  def back
    @events = Event.find(params[:event_id])
    @reservation = Reservation.new(reservation_params)
    render :new
  end

  def create
    @events = Event.find(params[:event_id])
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      PostMailer.published_email(@reservation,@events).deliver
      redirect_to complete_event_reservations_path(@events.id)
    else
      render :new
    end
  end
  
  def complete
  end

  private
  def reservation_params
    params.require(:reservation).permit(:reservation_time, :number_of_people,:family_name,:first_name,:family_name_kana,:first_name_kana,:phone_number, :email, :request, :event_id)
  end

  def set_reservation
    @events = Event.find(params[:event_id])
  end
end
