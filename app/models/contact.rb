class Contact < ApplicationRecord
  belongs_to :section

  scope :published, -> { where(ispublished: true).order(id: :asc) }

  mount_uploader :image, ImageUploader
end
