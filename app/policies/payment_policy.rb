class PaymentPolicy < ApplicationPolicy

  def new?
    create?
  end

  def create?
    user.present?
  end

  def confirmation?
    true
  end

end

