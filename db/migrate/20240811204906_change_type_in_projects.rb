class ChangeTypeInProjects < ActiveRecord::Migration[7.1]
  def change
    change_column :projects, :type, :string
  end
end
