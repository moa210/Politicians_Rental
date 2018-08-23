class ItemPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.all.order(created_at: :desc)
    end
  end

  def user_items?
    user.politician
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
