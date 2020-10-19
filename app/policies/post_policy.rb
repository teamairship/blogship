# frozen_string_literal: true

# post policy
class PostPolicy < ApplicationPolicy
  def show?
    return true if update?

    record.published?
  end

  def update?
    return true if user&.acts_as_admin?

    record.user_id == user&.id
  end

  def destroy?
    update?
  end

  def create?
    user&.acts_as_author?
  end

  def permitted_attributes
    base_attributes
  end

  def base_attributes
    %i[
      title
      content
    ]
  end

  class Scope < Scope
    def resolve
      return scope if user&.acts_as_admin?
      return scope.published.or(user.posts) if user&.acts_as_author?

      scope.published
    end
  end
end
