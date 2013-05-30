class Devise::RegistrationsController#edit
  def edit
    @user = current_user
  end

  def update_password
    @user = User.find(current_user.id)
    if @user.update_attributes(params[:user])
      # Sign in the user by passing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to root_path
    else
      render "edit"
    end
  end

  def change_password
    redirect_to :action => "edit", :change_password=>true
  end

end
