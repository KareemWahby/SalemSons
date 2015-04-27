class ProjectsController < ApplicationController
    before_action :find_project, only: [:show, :edit, :update, :destroy]
    def index
        @projects = Project.all
    end

    def show
      
    end

    def new
      if admin_signed_in?
        @project = current_admin.projects.build
      else
        redirect_to '/projects',notice: "please log in"
      end
    end

    def create
      @project = current_admin.projects.build(project_params)

      if @project.save
        redirect_to @project,notice: "Sucsessfuly uploaded"
      else
        render "new"
      end
    end
    def edit
      
    end

    def update
      if @project.update(project_params)
        redirect_to @project , notice: "Sucsessfuly updated"
      else
        render "edit"
      end
    end

    def destroy
      @project.destroy
      redirect_to '/projects'
    end

    private
      def project_params
        params.require(:project).permit(:customer,:location,:valueOfContract,:duration,:scope,:image)
      end

      def find_project
        @project=Project.find(params[:id])
        
      end
end