class SiteController < ApplicationController
  def index
    @user = User.last
  end
end
