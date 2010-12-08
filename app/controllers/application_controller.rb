class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  helper :all
  before_filter :session_trick
  
  def session_trick
    #cookies[:peti] = "hello"
    logger.info cookies[:peti]
    cookies.permanent[:peti_permanent] = "hosszutavu"
    logger.info cookies.signed[:peti_permanent_signed]
    cookies.permanent.signed[:peti_permanent_signed] = "secure"
  end
end
