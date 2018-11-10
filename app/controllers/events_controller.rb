class EventsController < ApplicationController


  def index
    @events = Event.all 
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])
    @event.update(post_params)
    redirect_to event_path(@event.id)
  end

  def new
    @event = Event.new
  end


  def create
    event = Event.create(post_params)
    redirect_to edit_event_path(event.id)
  end

  private 

  def post_params
    params.require(:event).permit(:name, :description, :place)
  end

end
