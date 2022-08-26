class Office < ApplicationRecord
  has_many :temp_jobs

  has_many :booking_requests
  has_many :temp_job_posts
  has_many :booking_proposals
end
