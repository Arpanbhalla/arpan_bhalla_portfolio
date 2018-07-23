module PortfolioTitle
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = 'Arpan Bhalla | Portfolio'
    @seo_keywords = "Arpan Bhalla, Rails developer, sydney, ruby"
  end
end



