class ApplicationController < ActionController::Base

  def hello
    render html: "hello, world! good night!"
  end
end