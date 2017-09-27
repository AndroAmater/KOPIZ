class Project < ApplicationRecord
	extend FriendlyId
  friendly_id :name, use: :slugged
	validates_presence_of :name
	has_many :project_phases
	belongs_to :user
end
