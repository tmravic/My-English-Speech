class SpeechPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      user.speeches
    end
  end

  def new?
    record.user == user || user.teacher?
  end

  def show?
    record.user == user || user.teacher?
  end

  def create?
    true
  end
end
