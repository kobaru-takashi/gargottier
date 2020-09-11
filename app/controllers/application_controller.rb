class ApplicationController < ActionController::Base
  before_action :basic_authentication

  private

  def basic_authentication
    authenticate_or_request_with_http_basic do |name, password|
      name == "Gargotier" && password == "Gargotier_password_0990"
    end
  end
end
