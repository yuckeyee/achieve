class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.followed_users
    respond_to do |format|
      format.html { redirect_to user_path(@user) }
      # JS形式でレスポンスを返します。
      format.js { render :follow }
    end
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers
    respond_to do |format|
      format.html { redirect_to user_path(@user) }
      # JS形式でレスポンスを返します。
      format.js { render :follow }
    end
  end

end
