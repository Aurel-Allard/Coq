class JourneyPolicy < ApplicationPolicy

  def new
    create?
  end

  def create?
    return true
  end
end
