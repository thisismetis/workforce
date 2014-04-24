class InvitesController < ApplicationController
  def create
    email = params[:email]
    InviteMailer.invite_email(email).deliver
    redirect_to root_path
  end
end    
