# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  port: '587',
  domain: 'gmail',
  user_name: 'Derekandyvette@gmail.com',
  password: 'motherlode4!',
  authentication: 'login',
  enable_starttls_auto: true
}

ActionMailer::Base.delivery_method = :smtp