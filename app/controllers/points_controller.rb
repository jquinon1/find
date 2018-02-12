class PointsController < ApplicationController
  before_action :set_travel

  def index
    @travel.points
  end

  def create
    @travel.points.create!(point_params)
    @notDone = true
    redirect_to new_user_travel_url
  end

  private

  def point_params
    params.require(:points).permit(:latitude,:longitude)
  end

  def set_travel
    @travel = current_user.travels.find(params['travel_id'])
  end
end
