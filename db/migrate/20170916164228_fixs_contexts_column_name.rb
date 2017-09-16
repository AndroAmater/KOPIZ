class FixsContextsColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :contexts, :context, :context_id
  end
end
