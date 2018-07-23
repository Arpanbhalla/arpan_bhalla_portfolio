class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include PortfolioTitle
  protect_from_forgery with: :exception

  def current_user
    super || OpenStruct.new(first_name: 'Guest')
  end
end
