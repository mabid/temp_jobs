class InvitesController < ApplicationController
  def create
    Invite.create(invite_params)
    redirect_back fallback_location: root_path
  end

  private
  def invite_params
    params.require(:invite).permit(:professional_id, :temp_job_id)
  end
end
