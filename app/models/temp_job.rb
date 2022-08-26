class TempJob < ApplicationRecord
  belongs_to :office
  has_many :professional_applications

  has_many :invites
  has_many :proposals
  has_many :applications
end
