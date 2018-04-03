class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= GuestUser.new # guest user (not logged in)
    alias_action :create, :read, :update, :destroy, to: :crud
    can :read, :all
    return unless user.persisted?
    can :crud, Blog, user_id: user.id
    return unless user.admin?
    can :manage, :all
  end
end
