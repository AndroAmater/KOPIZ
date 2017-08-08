class Task < ApplicationRecord
	belongs_to :project_phase
	belongs_to :context
	belongs_to :priority
	belongs_to :review_period
	belongs_to :status
	has_one :project, through: :project_phase
	accepts_nested_attributes_for :project_phase
	accepts_nested_attributes_for :context
	accepts_nested_attributes_for :priority
	accepts_nested_attributes_for :review_period
	accepts_nested_attributes_for :status
	has_and_belongs_to_many :tags
end
