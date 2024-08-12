class Project < ApplicationRecord
  validates_presence_of :title, :git_repo, :tech, :description, :project_type

  def project_link?
    self.demo_link.present?
  end
  
  def self.sort_by_type(type)
    if type == 'All'
      all.distinct
    else
      where(project_type: type).order(:title).distinct
    end
  end

  def self.alphabetical
    order(:title).distinct
  end

  def self.types
    pluck(:project_type).uniq
  end
end