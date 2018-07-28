class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include PortfolioTitle
  protect_from_forgery with: :exception
  before_action :set_copyright

  def set_copyright
    @copyright = ABViewTool::Renderer.copyright 'Arpan Bhalla', 'All rights reserved.'
  end

  def current_user
    super || OpenStruct.new(first_name: 'Guest')
  end

  module ABViewTool
    class Renderer
      def self.copyright name, msg
        "&copy;#{Time.now.year} | <b>#{name}<b> #{msg}".html_safe
      end
    end
  end
end
