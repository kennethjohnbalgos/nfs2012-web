class ApplicationController < ActionController::Base
  protect_from_forgery
  def renderJS
  	respond_to do |format|
    	format.js if request.xhr?
			format.html
    end
  end
end
