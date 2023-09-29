class HomeController < ApplicationController
  def index
    @users = User.all
    @user = User.new
  end

  def create
    @user = User.new(name: 'test', email: 'testmail')
    @user.save!
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end
