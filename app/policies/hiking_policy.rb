class HikingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all # Admin can show all restaurants
    end
  end

  def index?
    true
  end
end
