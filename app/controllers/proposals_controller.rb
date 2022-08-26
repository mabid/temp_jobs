class ProposalsController < ApplicationController
  def create
    Proposal.create(proposal_params)
    redirect_back fallback_location: root_path
  end

  private
  def proposal_params
    params.require(:proposal).permit(:professional_id, :temp_job_id)
  end
end
