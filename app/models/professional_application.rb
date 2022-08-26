class ProfessionalApplication < ApplicationRecord
  belongs_to :professional
  belongs_to :temp_job
end
