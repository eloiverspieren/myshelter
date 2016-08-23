class RefugePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all # Admin can show all shelters
      else
        scope.where(:user => user) # User can show his shelters
      end
    end
  end

  def index?
    true # All user can index
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


end
