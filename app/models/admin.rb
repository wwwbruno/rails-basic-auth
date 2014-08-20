class Admin < ActiveRecord::Base
	
  def create
    Admin.create(admim_params)
  end

  has_secure_password

  def self.authenticate(login, password)
  	Admin.find_by(:login => login).try(:authenticate, password)
  end

  private

  def admim_params
    params.require(:admin).permit(:name, :login, :password, :password_confirmation)
  end
end
