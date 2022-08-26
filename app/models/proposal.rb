class Proposal < ProfessionalApplication
  belongs_to :booking_proposal, foreign_key: "temp_job_id"
end
