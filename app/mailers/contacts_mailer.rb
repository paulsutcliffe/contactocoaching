class ContactsMailer < ActionMailer::Base
  default :from => "contacto@contactocoaching.com"

  def contact_notification(contact)
    @contact = contact
    mail(:to => "contacto@contactocoaching.com", :reply_to => contact.email, :subject => "Mensaje desde la web")
  end
  def contact_confirmation(contact)
    @contact = contact
    mail(:to => "#{contact.name} #{contact.last_name} <#{contact.email}>", :subject => "Mensaje enviado de Contacto Coaching")
  end
end
