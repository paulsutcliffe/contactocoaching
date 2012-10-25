class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale
  
  def confirm_logged_in
      unless session[:user_id]
        flash[:notice] = "Please log in."
        redirect_to(:controller => 'access', :action => 'login')
        return false # halts the before_filter
      else
        return true
      end
    end
  
  def body_id
    @id = params[:controller].parameterize
  end
  
  def body_class
    @class = params[:action].parameterize
    
    #front and not-front
    if params[:controller] == 'home'
      @front = 'front'
    else
      @front = 'not-front'
    end
    
    #logged-in and not-logged-in
    if !session[:user_id].blank?
      @logged = 'logged-in'
    else
      @logged = 'not-logged-in'      
    end
    
    @body_class = @class + ' ' + @front + ' ' + @logged
  end
  
  helper_method :body_id
  helper_method :body_class

private

  def set_locale
    I18n.locale = params[:locale] if params[:locale].present?
  end
  
  def default_url_options(options = {})
    {:locale => I18n.locale}
  end
end
