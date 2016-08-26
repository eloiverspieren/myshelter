class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized
  def home
    @refuges = Refuge.all
    @hikings = Hiking.all
    @profile = Profile.all
  end

  def navbar
    @profile = Profile.all
  end
end

