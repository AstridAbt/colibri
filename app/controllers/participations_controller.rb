class ParticipationsController < ApplicationController
  def index
    # @participations = Participation.all
    @participations = policy_scope(Participation)
    @past_participations = @participations.pasted
    @current_participations = @participations.currents
  end

  def create
    @quest = Quest.find(params[:quest_id])
    @participation = Participation.new
    @participation.quest = @quest
    @participation.user = current_user
    authorize @participation
    if @participation.save
      redirect_to participations_path
    else
      render :new
    end
  end

  def destroy
    @participation = Participation.find(params[:id])
    authorize @participation
    @participation.destroy
    redirect_to participations_path
  end
end
