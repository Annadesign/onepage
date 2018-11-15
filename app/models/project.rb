class Project < ApplicationRecord
  belongs_to :section
  belongs_to :service

  scope :published, -> { where(ispublished: true).order(id: :desc) }

  mount_uploader :image, ImageUploader
  
end
