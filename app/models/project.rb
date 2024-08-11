class Project < ApplicationRecord
  validates_presence_of :title, :git_repo, :tech, :description, :project_type

  def self.sort_by_type(type)
    if type == 'All'
      all
    else
      where(project_type: type).order(:title)
    end
  end
end