class CreateContexts < ActiveRecord::Migration[5.1]
  def change
    create_table :contexts do |t|
      t.string :context
      t.timestamps
    end
  end
end
