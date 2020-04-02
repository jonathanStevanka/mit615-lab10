class CommentPolicy < ApplicationPolicy

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
    if @user.is_admin?
      true
    else
      true
    end
  end

  def new?
    if @user.is_admin?
      create?
      true
    else
      create?
      true
    end
  end

  def update?
    if @user.is_admin?
      true
    else
      true
    end
  end

  def edit?
    if @user.is_admin?
      update?
      true
    else
      update?
      true
    end
  end

  def destroy?
    if @user.is_admin?
      true
    else
      true
    end
  end

  def resolve
    scope
  end

end
