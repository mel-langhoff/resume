class RemoveResponsibilitiesFromJobs < ActiveRecord::Migration[7.1]
  def change
    remove_column :jobs, :responsibilities, :string
  end
end
