class Service < ApplicationRecord
  belongs_to :section
  has_many :projects

  scope :ordered, -> { order(id: :asc) }
end
