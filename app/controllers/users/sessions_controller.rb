# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    super
    redirect_to new_home_path
  end

  # DELETE /resource/sign_out
  # ここは config/initializers/devise.rb で config.sign_out_via = :get としているので DELETE ではなく GET
  def destroy
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  # 許可するための追加のパラメータがある場合は、sanitizer に追加してください
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end
end
