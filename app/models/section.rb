class Section < ApplicationRecord
	has_many :homes
	has_many :articles
	has_many :projects
	has_many :services
	has_many :contacts
	has_many :partners
end
