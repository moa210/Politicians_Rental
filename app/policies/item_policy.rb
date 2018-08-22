class ItemPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.politician
  end

  def show?
    return true
  end

  def update?
    item_owner?
  end

  def destroy?
    item_owner?
  end

  private

  def item_owner?
    record.user == user
  end
end
