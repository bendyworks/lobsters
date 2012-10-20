ActionMailer::Base.smtp_settings = {
  :user_name => 'bendyworks',
  :password  => ENV['SENDGRID_PASSWORD'],
  :domain => "makemadison.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
