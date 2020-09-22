class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def hello
    render text: "hello, world!"
  end
end
