class AddTypeToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :type, :integer
  end
end
