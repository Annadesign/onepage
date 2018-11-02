class Service < ApplicationRecord
  belongs_to :section

  scope :ordered, -> { order(id: :asc) }
end
