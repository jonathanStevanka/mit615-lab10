class UserPolicy < ApplicationPolicy

  def index?
    if @user.is_admin?
      true
    else
      true
    end
  end

  def show?
    if @user.is_admin?
      true
    else
      true
    end
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  def resolve
    scope
  end

end
