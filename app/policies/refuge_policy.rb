class RefugePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all # Admin can show all shelters
    end
  end

  def home?
    true
  end

  def my_refuges?
    true
  end

  def index?
    true # All user can index
  end

  def create?
    true # All user can create
  end

  def update?
    return false unless user
    record.user == user || user.admin?# user == current_user
  end

  def destroy?
    update?
  end
end
