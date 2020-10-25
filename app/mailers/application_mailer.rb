class ApplicationMailer < ActionMailer::Base
  default from:     "French restaurant Gargotier",
          reply_to: Rails.application.credentials.gmail[:user_name]
  layout 'mailer'
end
