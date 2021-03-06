class ApplicationController < ActionController::Base
  protect_from_forgery

  def is_email?(email)
    !email.scan(/\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/i).empty?
  end
  
  def get_email(str)
    str.scan(/\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/i)[0]
  end
  
end