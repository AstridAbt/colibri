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
      redirect_to profile_path(current_user)
    else
      render :new
    end
  end

  def edit
    @participation = Participation.find(params[:id])
    authorize @participation
  end

  def update
    @participation.user = current_user
    authorize @participation
    @participation.update
    redirect_to edit_participations_path
  end

  def destroy
    @participation = Participation.find(params[:id])
    authorize @participation
    @participation.destroy
    redirect_to profile_path(current_user)
  end

  def finish_participation
    @participation = Participation.find(params[:participation_id])
    authorize @participation
    @participation.end_date = Date.today
    if @participation.save
      @participation.finish_quest
      redirect_to profile_path(current_user)
    else
      flash[:alert] = "Oups, quelque chose ne va pas. Essayez encore !"
    end
  end
end
