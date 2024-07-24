class AddResponsibilitiessToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :responsibilities, :text, array: true, default: []
  end
end
