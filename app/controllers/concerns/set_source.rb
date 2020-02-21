module SetSource
  extend ActiveSupport::Concern

  included do
    before_action :set_source
  end
  
  def set_source #для отслеживания источникка перехода на сайт
    session[:source] = params[:q] if params[:q]
  end
end
