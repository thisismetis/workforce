class ContactInformationsController < ApplicationController
  def show
    @user = find_user
  end

  def edit
    @user = find_user
  end

  def update
    @user = find_user
    @user.update(contact_information_params)
    redirect_to [@user, :contact_information]
  end

  private

  def contact_information_params
    params.require(:user).permit(
      :address,
      :phone_number,
      :emergency_name,
      :emergency_number,
      :emergency_relation
    )
  end

  def find_user
    User.find(params[:user_id])
  end

end
