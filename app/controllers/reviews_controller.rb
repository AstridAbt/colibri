class ReviewsController < ApplicationController
  before_action :set_participation, only: [:create]

  def create
    @review = Review.new(review_params)
    @review.participation = @participation
    @quest = @participation.quest
    if @review.save
      redirect_to quest_path(@quest)
    else
      render :new
    end
  end

  private

  def set_participation
    @participation = Participation.find(params[:participation_id])
    authorize @participation
  end

  def review_params
    params.require(:review).permit(:content)
  end

end
