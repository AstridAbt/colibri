class QuestsController < ApplicationController

  def index
    @quests = policy_scope(Quest)
    @level_1 = policy_scope(Quest).where(points: 100)
    @level_2 = policy_scope(Quest).where(points: 200)
    @level_3 = policy_scope(Quest).where(points: 400)
  end

  def show
    @quest = Quest.find(params[:id])
    authorize @quest
    @participation = Participation.new
  end

  def edit
    @quest = Quest.find(params[:id])
    authorize @quest
  end

  def update
    @quest.user = current_user
    authorize @quest
    @quest.update(quest_params)
    redirect_to quest_path(@quest)
  end

  def quest_params
    params.require(:quest).permit(:title, :content, :duration, :points)
  end

end
