class Api::V1::EventsController < ApiController
  def index
    render json: { events: Event.all }
  end
  def show
    render json: { event: Event.find(params[:id]) }
  end
end