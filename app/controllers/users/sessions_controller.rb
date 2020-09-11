class Users::SessionsController < Devise::SessionsController
  before_action :basic_authentication

  private

  def basic_authentication
    authenticate_or_request_with_http_basic do |name, password|
      name == "Admin" && password == "Admin_password_0880"
    end
  end
end
