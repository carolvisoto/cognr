class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project= Project.new(project_params)
    @project.save
    redirect_to root_path
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :image).merge(user_id: current_user.id)
  end
end
