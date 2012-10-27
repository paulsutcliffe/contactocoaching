class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_i18n_locale_from_params

  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end

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

protected

    def set_i18n_locale_from_params
      if params[:locale]
        if I18n.available_locales.include?(params[:locale].to_sym)
          I18n.locale = params[:locale]
        else
          flash.now[:notice] = "#{params[:locale]} translation not available"
          logger.error flash.now[:notice]
        end
      end
    end

    def default_url_options
      { :locale => I18n.locale }
    end
end
