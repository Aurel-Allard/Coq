class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = "Merci pour votre message, nous vous répondrons très rapidement !"
    else
      flash.now[:error] = "Désolé. Le message n\'a pas pu être convenablement envoyé. Vous pouvez nous contacter directement sur XXX."
      render :new
    end
  end
end
