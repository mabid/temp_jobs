class BookingProposal < TempJob
  default_scope { where(proposal: true) }

  has_many :proposals, autosave: true, foreign_key: "temp_job_id"

  before_validation :set_type

  private
  def set_type
    self.proposal  = true
  end
end
