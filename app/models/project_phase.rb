class ProjectPhase < ApplicationRecord
	has_many :tasks
	has_one :project
end
