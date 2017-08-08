class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.datetime :due_date
      t.string :link
      t.binary :attachment
      t.belongs_to :context
      t.belongs_to :priority
      t.belongs_to :project_phase
      t.belongs_to :review_period
      t.belongs_to :status

      t.timestamps
    end

    create_table :tags_tasks, id: false do |t|
      t.belongs_to :task, index: true
      t.belongs_to :tag, index: true
    end
  end
end
