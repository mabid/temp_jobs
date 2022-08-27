class Professional < ApplicationRecord
  has_many :professional_applications
  has_many :invites
  has_many :applications
  has_many :proposals
end
