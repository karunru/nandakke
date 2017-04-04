class UsersController < ApplicationController

  #GET /users
  def index
    if current_user.role == "teacher"
      @users = User.all.where(classroom: current_user.classroom).where('username REGEXP ?', '^j[0-9]*')
    else
      redirect_to root_path
    end
  end

  #PUT /users/update_all
  def update_all
    params.permit!
    params['user'].keys.each do |id|
      @user = User.find(id.to_i)
      @user.update_attributes(params['user'][id])
    end
    redirect_to users_url
  end

end
