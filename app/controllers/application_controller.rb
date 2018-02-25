class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def after_sign_in_path_for(resource)
    @journey = current_user.journey
    current_user.admin ? journeys_path : journey_path(@journey)
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
