ActionMailer::Base.smtp_settings = {
  port:              587,
  address:           'smtp.mailgun.org',
  user_name:         ENV['MAILGUN_SMTP_LOGIN'],
  password:          ENV['MAILGUN_SMTP_PASSWORD'],
  domain:            'appb681896280a74e1ca81cbe1a19a36d14.mailgun.org',
  authentication:    :plain,
  content_type:      'text/html'
}
ActionMailer::Base.delivery_method = :smtp

# Makes debugging *way* easier.
ActionMailer::Base.raise_delivery_errors = true

class DevelopmentMailInterceptor
  def self.delivering_email(message)
    message.to =  'youremail@website.com'
    message.cc = nil
    message.bcc = nil
  end
end

# Locally, outgoing mail will be 'intercepted' by the
# above DevelopmentMailInterceptor before going out
if Rails.env.development?
  ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor)
end
