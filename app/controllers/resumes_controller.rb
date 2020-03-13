class ResumesController < ApplicationController
  before_action :set_resume_item, only: [:edit, :update, :show, :destroy]
  layout 'resume'

  def index
    @resume_item = Resume.all
  end

  def angular
    @angular_resume_item = Resume.angular
  end

  def new
    @resume_item = Resume.new
    3.times{@resume_item.technologies.build }
  end

  def create
    @resume_item = Resume.new(resume_params)

    respond_to do |format|
      if @resume_item.save
        format.html { redirect_to resumes_path, notice: 'Your portfolio item created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @resume_item.update(resume_params) #params.require(:resume).permit(:title, :subtitle, :body)
        format.html { redirect_to resumes_path, notice: 'Record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  end

  def destroy
    #Perform the lookup

    #Destroy the record
    @resume_item.destroy

    #Rederict
    respond_to do |format|
      format.html { redirect_to resumes_url, notice: 'Record was removed.' }
    end
  end

  private

  def resume_params
    params.require(:resume).permit(:title,
                                   :subtitle,
                                   :body
                                  )
  end

  def set_resume_item
    @resume_item = Resume.find(params[:id])
  end
end
