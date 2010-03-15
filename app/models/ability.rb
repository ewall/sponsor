class Ability

	include CanCan::Ability

  def initialize(user)
    # user ||= User.new
		if user.nil?
			can :read, Family
			can :create, Sponsor
			return
		end

		if user.role? :superuser
      can :manage, :all

		elsif user.role? :user
			# cannot [:create, :update, :destroy], User
			cannot :manage, User
			can :manage, :all

		else
			can :read, Family
			can :create, Sponsor
			can [:create, :destroy], UserSession

    end
  end

end
