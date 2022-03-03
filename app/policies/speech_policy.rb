class SpeechPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # scope.all
      user.teacher? ? scope.all : scope.where(user: user)
    end
  end

  def index?
    true
  end

  def new?
    true
  end

  def show?
    record.user == user || user.teacher?
  end

  def create?
    true
  end
end
