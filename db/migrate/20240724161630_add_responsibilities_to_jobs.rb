class AddResponsibilitiesToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :responsibilities, :string
  end
end
