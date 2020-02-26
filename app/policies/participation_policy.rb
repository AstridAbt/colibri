class ParticipationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def create?
    true
  end

  def edit?
    true
  end

  def destroy?
    record.user == user
  end

  def finish_participation?
    record.user == user
  end
end
