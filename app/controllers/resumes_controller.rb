class ResumesController < ApplicationController
  def index
    @resume_item = Resume.all
  end

  def new
    @resume_item = Resume.new
  end

  def create
    @resume_item = Resume.new(params.require(:resume).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @resume_item.save
        format.html { redirect_to resumes_path, notice: 'Your portfolio item created.' }
      else
        format.html { render :new }
      end
    end
  end

end
