module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_page_defaults
  end

  def set_page_defaults
    @page_title = "My Portfolio | My portfolio Website" #не рабоатет на других страницах до указания контретного названия тайтла
    @seo_keywords = "Viktor Brykalov portfolio" #тоже самое что и выше
  end
end
