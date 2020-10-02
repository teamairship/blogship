# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def index; end

  private

  def user_not_authorized
    flash.now[:error] = "You are not authorized to perform this action."

    redirect_to(request.referer || root_path)
  end
end
