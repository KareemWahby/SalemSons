class PicsController < ApplicationController
  before_action :find_pic, only: [:show, :edit, :update, :destroy]
  
  def index
    @pics = Pic.all
  end

  def show
    
  end

  def new
    if admin_signed_in?
      @pic = current_admin.pics.build
    else
      redirect_to '/pics',notice: "please log in"
    end
  end

  def create
    @pic = current_admin.pics.build(pic_params)

    if @pic.save
      redirect_to @pic,notice: "Sucsessfuly uploaded"
    else
      render "new"
    end
  end
  def edit
    
  end

  def update
    if @pic.update(pic_params)
      redirect_to @pic , notice: "Sucsessfuly updated"
    else
      render "edit"
    end
  end

  def destroy
    @pic.destroy
    redirect_to '/pics'
  end

  private
    def pic_params
      params.require(:pic).permit(:caption,:image)
    end

    def find_pic
      @pic=Pic.find(params[:id])
      
    end
end
