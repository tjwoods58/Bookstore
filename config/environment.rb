# Load the Rails application.
require File.expand_path('../application', __FILE__)



# Initialize the Rails application.
Depot::Application.initialize!

Depot::Application.configure do
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = { 
    address: "pod51004.outlook.com",
    port: 587, 
    authentication: "login",
    user_name: "tjwoods@valdosta.edu", 
    password: "TJ58woods", 
    enable_starttls_auto: true
  }
end