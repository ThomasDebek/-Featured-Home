class ContactMailer < ActionMailer::Base
  default from: "yours.apartment@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.welcome.subject
  #
  def welcome(contact)
    @contact = contact
    mail(to: contact.email, subject: "Witaj #{@contact.name}")
  end

end
