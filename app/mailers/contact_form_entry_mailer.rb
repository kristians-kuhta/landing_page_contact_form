class ContactFormEntryMailer < ApplicationMailer
  def entry_received_email
    @full_name = params[:full_name]
    @phone = params[:phone]
    @subject = params[:subject]
    @message  = params[:message]

    mail(to: params[:email], subject: 'Your message has been received')
  end
end
