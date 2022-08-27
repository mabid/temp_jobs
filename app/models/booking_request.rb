class BookingRequest < TempJob
  default_scope { where(request: true) }

  has_many :invites, foreign_key: "temp_job_id"
  before_validation :set_type

  private
  def set_type
    self.request  = true
  end
end
