class ContactMailer < ActionMailer::Base

  def client_question(form_data)
    @form_data = form_data

    mail(
      to: A9n.mailer[:to],
      from: @form_data.email,
      subject: 'Client question'
    )
  end
end
