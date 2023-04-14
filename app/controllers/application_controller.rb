# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pagy::Backend

  private

  def ensure_logged_in
    return if user_signed_in?

    redirect_to new_user_session_path, notice: t('must_sign_in')
  end
end
