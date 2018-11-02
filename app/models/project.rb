class Project < ApplicationRecord
  belongs_to :section

  scope :published, -> { where(ispublished: true).order(id: :desc) }

  mount_uploader :image, ImageUploader
  
end
