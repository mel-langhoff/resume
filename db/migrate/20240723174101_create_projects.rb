class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :git_repo
      t.string :tech
      t.string :demo_link

      t.timestamps
    end
  end
end
