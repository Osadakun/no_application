class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
    # deviseの機能が使われる前に、configure_permitted_parametersを実行

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email]) # sign_up時にユーザ名（+email）の操作を許可
  end
end
