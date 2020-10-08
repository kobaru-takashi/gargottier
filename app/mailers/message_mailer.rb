class MessageMailer < ApplicationMailer
  default from: '"French restaurant Gargotier"'
  def received_email(message)
    @message = message
    mail to: Rails.application.credentials.gmail[:user_name]
  end
end
