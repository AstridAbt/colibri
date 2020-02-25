class ProfilesController < ApplicationController
  def show
    @profile = User.find(params[:id])
    authorize @profile
  end
end
