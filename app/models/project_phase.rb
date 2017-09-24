class ProjectPhase < ApplicationRecord
	validates_presence_of :name
	has_many :tasks
	has_one :project
	belongs_to :user

	def self.by_project params
		where("project_id = ?", params)
	end
end
