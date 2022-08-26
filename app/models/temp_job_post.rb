class TempJobPost < TempJob
  default_scope { where(post: true) }
  before_validation :set_type

  has_many :applications, foreign_key: "temp_job_id"

  private
  def set_type
    self.post  = true
  end
end
