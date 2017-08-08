class AddStatusIdToStatuses < ActiveRecord::Migration[5.1]
  def change
    add_column :statuses, :status_id, :string
  end
end
