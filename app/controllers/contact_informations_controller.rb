class ContactInformationsController < ApplicationController
  def show
    @contact_information = find_contact_information
  end

  def new
    @contact_information = ContactInformation.new
  end

  def create
    @contact_information = current_user.
      create_contact_information(contact_information_params)
    redirect_to @contact_information
  end

  private

  def contact_information_params
    params.require(:contact_information).
      permit(:address, :phone_number, :emergency_name, :emergency_number, :emergency_relation)
  end

  def find_contact_information
    ContactInformation.find(params[:id])
  end

end
