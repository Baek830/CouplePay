class ProjectsController < ApplicationController
  def index
  end

  def new
    @project = Project.new(project_params)

  def show
  end

  private
  def project_params
    params.require(:project).permit(:name)
  end
end
