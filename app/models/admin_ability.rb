class AdminAbility
  include CanCan::Ability
  def initialize(user)
    if user && user.admin?
      can :manage, :all   
    end
  end
end