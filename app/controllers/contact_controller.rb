class ContactController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "Success!"
      redirect_to new_contact_path
    else
      flash[:error] = "Please retry :("
      render :index
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
