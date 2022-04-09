class ApplicationMailer < ActionMailer::Base
  default from: ENV["GOOGLE_MAIL_ADDRESS"]
  layout 'mailer'
end
