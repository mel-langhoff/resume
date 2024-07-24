class ProjectsController < ApplicationController
  def index
    @projects = Project.all.uniq
  end

  def show
  end
end
