class AvailabilityPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(:user => user) # Admin can show all restaurants
    end
  end

  def index?
    true # All user can index
  end

  def create?
    record.refuge.user == user # All user can create
  end

  def destroy?
    record.refuge.user == user # if user have created the restaurant  can destory
  end

  def edit?
    record.refuge.user == user
  end

  def update?
    record.refuge.user == user # user == current_user
  end
end
