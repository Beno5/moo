class ContactFormMailer < ApplicationMailer
  default from: 'info@moobd.com'

  def contact_email(name, message, email)
    @name = name
    @email = email
    @message = message

    mail(to: 'info@moobd.com', subject: "New Message from #{name}!")
  end
end
