class AddUserRefToProjectPhases < ActiveRecord::Migration[5.1]
  def change
    add_reference :project_phases, :user, foreign_key: true
  end
end
