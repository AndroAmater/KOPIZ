class Project < ApplicationRecord
	validates_presence_of :name
	has_many :project_phases
	belongs_to :user
end
