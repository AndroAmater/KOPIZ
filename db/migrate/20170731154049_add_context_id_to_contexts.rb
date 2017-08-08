class AddContextIdToContexts < ActiveRecord::Migration[5.1]
  def change
    add_column :contexts, :context_id, :string
  end
end
