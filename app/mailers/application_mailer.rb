class ApplicationMailer < ActionMailer::Base
  default from:     "French restaurant Gargotier",
          reply_to: "s80.kobaru.takashi@gmail.com"
  layout 'mailer'
end