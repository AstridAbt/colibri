class ProfilesController < ApplicationController
  def show
    @profile = User.find(params[:id])
    raise
  end
end
