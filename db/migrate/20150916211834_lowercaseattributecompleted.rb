class Lowercaseattributecompleted < ActiveRecord::Migration
  def change
    rename_column :taskmanagers, :Completed, :completed
  end
end
