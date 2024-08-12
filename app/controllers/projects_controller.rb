class ProjectsController < ApplicationController
  def index
    @projects = Project.all.distinct
    @alphabetically = @projects.alphabetical
    @by_type = @projects.sort_by_type
    @by_project_link = @projects.project_link?
  end

  def show
  end
end
