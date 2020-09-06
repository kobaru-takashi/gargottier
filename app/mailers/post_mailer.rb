class PostMailer < ApplicationMailer
  default from: 's80.kobaru.takashi@gmail.com'
  def published_email(reservation)
    @reservation = reservation
    mail to: reservation.email
  end
end
