# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

config.action_mailer.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.smtp_settings = {
:address   => "mail.adamhannaballroom.com",
:domain => 'ahbd-scheduler.herokuapp.com',
:port      => 465,
:user_name => "mailer@adamhannaballroom.com",
:password  => ENV['SMTP_PASSWORD'], 
:authentication => :plain,
:enable_starttls_auto => true
}
