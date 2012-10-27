ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "contactocoaching.com",
  :user_name            => "contacto@contactocoaching.com",
  :password             => "comida123",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
