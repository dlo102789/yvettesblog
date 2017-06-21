# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           => 587,
  :address        => 'smtp.sendgrid.net',
  :user_name      => 'app71074003@heroku.com',
  :password       => 'lbqfuvr63783',
  :domain         => 'derekandyvette.herokuapp.com',
  :authentication => :plain,
  :enable_starttls_auto => true
}

ActionMailer::Base.delivery_method = :smtp