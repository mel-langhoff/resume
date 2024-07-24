class ProjectsController < ApplicationController
  def index
    @projects = Project.all.distinct
  end

  def show
  end
end
