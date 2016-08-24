class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(:user => user) # User can show his restaurants
    end
  end

  def index?
    true # All user can index
  end

  def my_bookings?
    true
  end

  def create?
    true # All user can create
  end

  def destroy?
    record.user == user || user.admin? # if user have created the restaurant  can destory
  end

  def update?
    record.user == user || user.admin?# user == current_user
  end

  def accept?
    record.refuge.user == user || user.admin?# user == current_user
  end

  def reject?
    record.refuge.user == user || user.admin?# user == current_user
  end
end
