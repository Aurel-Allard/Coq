class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # before_action :authenticate_user!, except: [ :new, :faq ]
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "Vous n'êtes pas autorisé à réaliser cette action"
    redirect_to(root_path)
  end

  private

  def after_sign_in_path_for(resource)
    @journey = current_user.journey
    current_user.admin ? journeys_path : journey_path(@journey)
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
