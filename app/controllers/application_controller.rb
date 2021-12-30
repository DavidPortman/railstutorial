class ApplicationController < ActionController::Base

  def hello
    render html: "hello, world! fuckin world!"
  end
end