class ApplicationController < ActionController::Base

  def goodbye
  	render html: "goodbye, world"	
  end
end
