class PostMailer < ApplicationMailer
  default from: "French restaurant Gargotier"
  def published_email(reservation,events)
    @events = events
    @reservation = reservation
    mail to: reservation.email
  end
end
