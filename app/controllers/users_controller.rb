class UsersController < ApplicationController

  

  def new
   user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to users_path(user.id)
  end

  


  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
    @comments = @user.comments
  end


  private

  def user_params
    params.require(:user).permit(:email, :password, :name, :profile, :occupation, :position)
  end
end