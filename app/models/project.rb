class Project < ApplicationRecord
  validates_presence_of :title, :git_repo, :tech, :description, :project_type

  def project_link?
    demo_link.present?
  end
  
  def self.sort_by_type(type)
    if type == 'All'
      all
    else
      where(project_type: type).order(:title)
    end
  end

  def self.alphabetical
    order(:title)
  end
end