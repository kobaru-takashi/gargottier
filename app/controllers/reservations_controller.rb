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
    # Reservation.create!(reservation_params)
    # redirect_to complete_event_reservations_path(@events.id)
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      PostMailer.published_email(@reservation).deliver
      redirect_to complete_event_reservations_path(@events.id)
    else
      render :new
    end
  end


    # respond_to do |f|
    #   if Reservation.create!(reservation_params)
    #     PostMailer.send_when_create(@reservation).deliver
    #     format.html { redirect_to @reservation, notice: 'User was successfully created.' }
    #     format.json { render :show, status: :created, location: @reservation }
    #     redirect_to complete_event_reservations_path(@events.id)
    #   else
    #     format.html { render :new }
    #     format.json { render json: @user.errors, status: :unprocessable_entity }
    #   end
    # end

  
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
