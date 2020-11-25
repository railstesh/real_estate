class ComplexBuilding < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :manager
  default_scope -> { where(:purchase => true) }
  scope :latest_complexes, -> { order created_at: :desc }

  def self.update_data(id)
    complex_building = ComplexBuilding.find(id)
    complex_building.update_column(:purchase, false)
    complex_building.manager.email
  end
end
