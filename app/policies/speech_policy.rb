class SpeechPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      user.speeches
    end
  end

  def new?
   true
  end

  def create?
    true
  end
end
