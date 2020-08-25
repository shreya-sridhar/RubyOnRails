class WelcomeController < ApplicationController
  before_action :set_values, only: [:home]

  def home
    # @message = "welcome to my homepage"
    #
    # some_value = true;
    # if some_value
    #   redirect_to root_url, flash: {success: "page redirect was successful"}
    # else
    #   redirect_to wlecome_features_url
    # end
  end



  def features
  end

  def about
  end

  def contact
  end

  def set_values
    @name = "David"
  end
end
