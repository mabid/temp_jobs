class Invite < ProfessionalApplication
  belongs_to :booking_request, foreign_key: "temp_job_id"
end
