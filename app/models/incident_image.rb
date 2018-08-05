class IncidentImage < ApplicationRecord
  mount_uploader :image, ImageUploader
  #Associations
  belongs_to :incident

  #Validations
  validates :image, presence: true
end
