class QuestsController < ApplicationController

  def index
    @quests = policy_scope(Quest)
    authorize @quest
  end

  def show
    @quest = Quest.find(params[:id])
    authorize @quest
  end

end
