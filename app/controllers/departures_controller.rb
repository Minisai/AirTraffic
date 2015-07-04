class DeparturesController < ApplicationController
  def index
    @departures = Departure.order(created_at: :desc)
  end

  def create
    @departure = Departure.create

    render json: @departure
  end
end
