class RemoveNameFromPriorities < ActiveRecord::Migration[5.1]
  def change
    remove_column :priorities, :name, :string
  end
end
