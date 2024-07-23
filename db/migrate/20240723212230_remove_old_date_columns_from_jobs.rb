class RemoveOldDateColumnsFromJobs < ActiveRecord::Migration[7.1]
  def change
    remove_column :jobs, :start_date, :integer
    remove_column :jobs, :end_date, :integer
  end
end
