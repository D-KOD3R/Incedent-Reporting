class Incident < ApplicationRecord

	#Associations
	has_many :incident_images, :dependent => :delete_all
	accepts_nested_attributes_for :incident_images

	#Validations
	validates :school_name, presence: true
	validates :description, presence: true
end
