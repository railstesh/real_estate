class House < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :manager
  default_scope -> { where(:purchase => true) }
  scope :latest_houses, -> { order created_at: :desc }

  def self.update_data(id)
    house = House.find(id)
    house.update_column(:purchase, false)
    house.manager.email
  end

end
