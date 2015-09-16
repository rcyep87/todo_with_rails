class CreateTaskmanagers < ActiveRecord::Migration
  def change
    create_table :taskmanagers do |t|
      t.string    :task,    limit:   300
      t.boolean   :status,  default: false

      t.timestamps null: false
    end
  end
end
