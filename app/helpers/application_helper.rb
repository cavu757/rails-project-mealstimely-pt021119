module ApplicationHelper
  def current_user
    @current_user = User.find(session[:user_id]) unless !User.exists?(id: session[:user_id])
  end

  def current_user_is_cook?
    if @current_user[:is_cook]
      "(COOK)"
    else
      "(EATER)"
    end
  end

  def is_logged_in
    if !@current_user
      redirect_to root_path
    end
  end
end
