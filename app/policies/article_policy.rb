class ArticlePolicy < ApplicationPolicy

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
      false
    end
  end

  def new?
    if @user.is_admin?
      create?
      true
    else
      false
    end
  end

  def update?
    if @user.is_admin?
      true
    else
      false
    end
  end

  def edit?
    if @user.is_admin?
      update?
      true
    else
      false
    end
  end

  def destroy?
    if @user.is_admin?
      true
    else
      false
    end
  end

  def resolve
    scope
  end

end