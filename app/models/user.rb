class User < ActiveRecord::Base
	acts_as_authentic

  ROLES = %w[superuser user]

  def role? (role)
    ROLES.include? role.to_s
  end
  
  def role_symbols
		[role.to_sym]
  end

end
