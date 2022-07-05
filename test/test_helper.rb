ENV['RAILS_ENV'] ||= 'test'
require_relative "../config/environment"
require "rails/test_help"
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  include ApplicationHelper
  def is_logged_in?
    !session[:user_id].nil?
  end
  # Add more helper methods to be used by all tests here...
end


# class ActiveSupport::TestCase　これが8.2.5をやる前の状態　テストエラーが出たから　def is_logged_in?~以下を強引に突っ込んだらgreenに　なぜ？
#   # Run tests in parallel with specified workers
#   parallelize(workers: :number_of_processors)

#   # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
#   fixtures :all
#   include ApplicationHelper
#   # Add more helper methods to be used by all tests here...
# end






# class ActiveSupport::TestCase　ここがチュートリアルに載ってた成正解とされるもの
#   fixtures :all

#   # テストユーザーがログイン中の場合にtrueを返す
#   def is_logged_in?
#     !session[:user_id].nil?
#   end
# end