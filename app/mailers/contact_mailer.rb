class ContactMailer < ApplicationMailer

  def contact_email(contact_info)
    @contact_info = contact_info
    mail(to: "nicholas.johannsen@gmail.com", subject: "#{@contact_info.Name} is intrested in a painting")
  end
end
