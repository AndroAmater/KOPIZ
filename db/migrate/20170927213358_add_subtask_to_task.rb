class AddSubtaskToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :subtask, :string
  end
end
