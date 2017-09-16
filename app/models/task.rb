class Task < ApplicationRecord
	validates_presence_of :name, :context_id, :priority_id, :project_phase_id, :review_period_id, :status_id

	belongs_to :project_phase
	belongs_to :context
	belongs_to :priority
	belongs_to :review_period
	belongs_to :status
	has_one :project, through: :project_phase
	has_and_belongs_to_many :tags

	accepts_nested_attributes_for :project_phase,
																reject_if: lambda { |attrs| attrs["name"].blank? }
	accepts_nested_attributes_for :context,
																reject_if: lambda { |attrs| attrs["context"].blank? }
	accepts_nested_attributes_for :priority,
																reject_if: lambda { |attrs| attrs["priority_id"].blank? }
	accepts_nested_attributes_for :review_period,
																reject_if: lambda { |attrs| attrs["review_period_id"].blank? }
	accepts_nested_attributes_for :status,
																reject_if: lambda { |attrs| attrs["status_id"].blank? }
=begin
	enum context_id: { meeting: 1, communication: 2, information_work: 3, knowledge_work: 4, learning: 5, errand: 6, chore:7}
	enum priority_id: { top: 1, high: 2, normal: 3, low: 4}
	enum review_period_id: { weekly: 3, monthly: 4, quarterly: 5, yearly: 6}
	enum status_id: { active: 1, completed: 2, abandoned: 3, next_project: 4}
=end
	after_initialize :set_defaults

	def set_defaults
		self.name ||= "New Task"
		self.due_date ||= Time.now.strftime('%Y-%m-%d %H:%M:%S')
	end

	def self.sorted(direction:)
		Task.order("name " + direction)
	end
end
