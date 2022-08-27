class TempJob < ApplicationRecord
  belongs_to :office
  has_many :professional_applications, autosave: true

  has_many :invites
  has_many :proposals
  has_many :applications
end
