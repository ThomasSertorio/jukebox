class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def create
    @contact = Contact.create(contact_params)
  end

  private
  def contacts_params
    params.require(:contact).permit(:email)
  end
end
