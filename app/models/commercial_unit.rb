class CommercialUnit < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :manager
  default_scope -> { where(:purchase => true) }
  scope :latest_commercials, -> { order created_at: :desc }

  def self.update_data(id)
    commercial_unit = CommercialUnit.find(id)
    commercial_unit.update_column(:purchase, false)
    commercial_unit.manager.email
  end
end
