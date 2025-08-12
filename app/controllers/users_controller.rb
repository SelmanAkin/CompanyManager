class UsersController < ApplicationController
 
  before_action :set_user, only: [:destroy, :show]

  def index
    @users = User.all
  end

  def destroy
    @user.destroy
    redirect_to users_path, notice: "Kullanıcı başarıyla silindi."
  end
  def show
    
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
