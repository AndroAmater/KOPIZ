class Project < ApplicationRecord
	validate_presence_of :name
	has_many :project_phases
end
