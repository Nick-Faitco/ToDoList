class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :completion_status
      t.datetime :created_date
      t.datetime :updated_date
      t.datetime :completed_date

      t.timestamps
    end
  end
end
