require 'action_mailer'
# set which directory ActionMailer should use
ActionMailer::Base.view_paths = File.dirname(__FILE__)

# ActionMailer configuration
ActionMailer::Base.smtp_settings = {
  address:    "smtp.gmail.com",
  port:       "587",
  user_name:  "billy.chen1206@gmail.com",
  password:   "",
  authentication: :plain
}

class Newsletter < ActionMailer::Base
  default from: "billy.chen1206@gmail.com"
  def welcome(recipient)
    @recipient = recipient
    mail(to: recipient,
      subject: "Welcome to Honey Heaven!")
  end
end
