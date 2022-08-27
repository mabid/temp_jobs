class BookingProposalsController < ApplicationController
  def create
    booking_proposal = BookingProposal.create(booking_proposal_params.except(:proposal))
    Proposal.create(booking_proposal_params[:proposal].merge(temp_job_id: booking_proposal.id))
    redirect_back fallback_location: root_path
  end

  private

  def booking_proposal_params
    params.require(:booking_proposal).permit(:office_id, :when, :notes, proposal: [:professional_id])
  end
end
