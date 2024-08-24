class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @types = Project.types
    type = params[:project_type] || 'All'
    # @alphabetically = @projects.alphabetical
    @by_type = @projects.alphabetical.sort_by_type(type)
    # @by_project_link = @projects.project_link?
  end

  def show
  end
end
