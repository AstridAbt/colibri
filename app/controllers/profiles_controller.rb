class ProfilesController < ApplicationController
  def show
    @profile = User.find(params[:id])
    authorize @profile
    @participations = policy_scope(Participation)
    @my_past_participations = @participations.pasted.order("created_at DESC")
    @my_current_participations = @participations.currents.order("created_at DESC")
  end
end
