class AssignmentPolicy
  attr_reader :user, :assignment

  def initialize(user, assignment)
    @user = user
    @assignment = assignment
  end

  def create?
    return !user.nil?
  end

  def update?
    return !user.nil? && assignment.created_by_user_id == user.id
  end

  def destroy?
    return !user.nil? && assignment.created_by_user_id == user.id
  end
end
