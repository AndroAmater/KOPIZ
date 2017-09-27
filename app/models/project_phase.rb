class ProjectPhase < ApplicationRecord
	extend FriendlyId
  friendly_id :name, use: :slugged
	validates_presence_of :name
	has_many :tasks
	has_one :project
	belongs_to :user
end
