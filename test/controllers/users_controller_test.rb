require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  
  test "should get new" do
    get :new
    assert_response :success
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
      flash[:success] = "Welcome to the Sample App!"
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end



end
