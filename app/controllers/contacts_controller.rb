class ContactsController < InheritedResources::Base

  def create
    @contact = Contact.new(params[:contact])
    ContactsMailer.contact_confirmation(@contact).deliver
    ContactsMailer.contact_notification(@contact).deliver
    create!(:notice => "Mensaje enviado con éxito") { new_contact_path }
  end

end
