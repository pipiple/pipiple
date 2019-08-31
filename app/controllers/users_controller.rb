class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    @submits = Submit.where(user_id: @user.id)
  end
end
