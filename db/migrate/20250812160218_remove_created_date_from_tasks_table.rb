class RemoveCreatedDateFromTasksTable < ActiveRecord::Migration[8.0]
  def change
    remove_column :tasks, :created_date, :datetime
    remove_column :tasks, :updated_date, :datetime
  end
end
