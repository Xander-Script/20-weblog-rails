class UsersController < Clearance::UsersController
  def user_params
    super.permit(:name, :email, :password)
  end
end
