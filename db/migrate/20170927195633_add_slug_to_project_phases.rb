class AddSlugToProjectPhases < ActiveRecord::Migration[5.1]
  def change
    add_column :project_phases, :slug, :string
    add_index :project_phases, :slug, unique: true
  end
end
