class ResumesController < ApplicationController
  def index
    @resume_item = Resume.all
  end
end
