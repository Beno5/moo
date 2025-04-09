class ContactFormController < ApplicationController
  def send_email
    @name = "#{params['first_name']} #{params['last_name']}"
    @message = params[:message]
    @email = params[:email]
    ContactFormMailer.contact_email(@name, @message, @email).deliver_now!
    redirect_to root_path, notice: 'Your message has been sent successfully!'
  end
end
