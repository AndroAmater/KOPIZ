class CreateReviewPeriods < ActiveRecord::Migration[5.1]
  def change
    create_table :review_periods do |t|
      t.string :review_period
      t.timestamps
    end
  end
end
