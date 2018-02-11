class PointsController < ApplicationController
  before_action :set_travel
  def index
    @travel.points
  end

  def create
    @travel.points.create!(point_params)
  end

  private
  def point_params
    params.permit(:latitude,:longitude)
  end

  def set_travel
    @travel = Travel.find(params['travel_id'])
  end
end
