class ProjectPhase < ApplicationRecord
	validate_presence_of :name
	has_many :tasks
	has_one :project
end
