class Application < ProfessionalApplication
  belongs_to :temp_job_post, foreign_key: "temp_job_id"
end
