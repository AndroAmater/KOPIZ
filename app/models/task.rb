class Task < ApplicationRecord
	validate_presence_of :name, :context_id, :priority_id, :project_phase_id, :review_period_id, :status_id

	belongs_to :project_phase
	belongs_to :context
	belongs_to :priority
	belongs_to :review_period
	belongs_to :status
	has_one :project, through: :project_phase
	has_and_belongs_to_many :tags

	accepts_nested_attributes_for :project_phase
	accepts_nested_attributes_for :context
	accepts_nested_attributes_for :priority
	accepts_nested_attributes_for :review_period
	accepts_nested_attributes_for :status

	enum :context_id { meeting: 1, communication: 2, information_work: 3, knowledge_work: 4, learning: 5, errand: 6, chore:7}
	enum :priority_id { top: 1, high: 2, normal: 3, low: 4}
	enum :review_period_id { weekly: 3, monthly: 4, quarterly: 5, yearly: 6}
	enum :status_id { active: 1, completed: 2, abandoned: 3, next_project: 4}
end
