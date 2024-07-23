class AddStartDateAndEndDateToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :start_date, :datetime
    add_column :jobs, :end_date, :datetime
  end
end
