class DeparturesController < ApplicationController
  def index
    @departures = Departure.order(id: :desc)
  end

  def create
    @departure = Departure.create

    render json: @departure
  end
end
