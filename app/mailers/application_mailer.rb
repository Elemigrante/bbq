class ApplicationMailer < ActionMailer::Base
  default from: 'https://.herokuapp.com/'
  layout 'mailer'
end
