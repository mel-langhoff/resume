class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :location
      t.integer :start_date
      t.integer :end_date
      t.string :description

      t.timestamps
    end
  end
end
