class RemoveNameFromReviewPeriods < ActiveRecord::Migration[5.1]
  def change
    remove_column :review_periods, :name, :string
  end
end
