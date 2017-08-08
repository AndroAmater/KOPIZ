class AddPriorityIdToPriorities < ActiveRecord::Migration[5.1]
  def change
    add_column :priorities, :priority_id, :string
  end
end
