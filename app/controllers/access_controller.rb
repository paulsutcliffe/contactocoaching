class AccessController < ApplicationController
  
  before_filter :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def login
    respond_to do |format|
      format.html
    end
  end
  
  def attempt_login
    authorized_user = AdminUser.authenticate(params[:username], params[:password])
    if authorized_user
      session[:user_id] = authorized_user.id
      session[:username] = authorized_user.username
      flash[:notice] = "Hola, desde aquí puedes modificar los contenidos de tu web. Puedes por ejemplo:"
      redirect_to admin_path
    else
      flash[:notice] = "Usuario y/o contraseña inválidos"
      redirect_to(:action => 'login')
    end
    
  end
  
  def logout
    session[:user_id] = nil
    session[:username] = nil
    flash[:notice] = "Has cerrado sesión"
    redirect_to :action => 'login'
  end

end
