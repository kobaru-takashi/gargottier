class Users::SessionsController < Devise::SessionsController
  before_action :basic_authentication

  private

  def basic_authentication
    authenticate_or_request_with_http_basic do |name, password|
      name == Rails.application.credentials.basic_auth[:name] && password == Rails.application.credentials.basic_auth[:pass]
    end
  end
end
