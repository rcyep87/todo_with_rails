class ChangeStatusToCompleted < ActiveRecord::Migration
  def change
    rename_column :taskmanagers, :status, :Completed
  end
end
