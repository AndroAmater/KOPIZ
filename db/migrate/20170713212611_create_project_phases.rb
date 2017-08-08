class CreateProjectPhases < ActiveRecord::Migration[5.1]
  def change
    create_table :project_phases do |t|
      t.string :project_phase
      t.string :description
      t.belongs_to :project, index: true

      t.timestamps
    end
  end
end
