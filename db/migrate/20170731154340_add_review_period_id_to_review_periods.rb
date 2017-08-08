class AddReviewPeriodIdToReviewPeriods < ActiveRecord::Migration[5.1]
  def change
    add_column :review_periods, :review_period_id, :string
  end
end
