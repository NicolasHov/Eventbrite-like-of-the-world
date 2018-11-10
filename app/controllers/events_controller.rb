class EventsController < ApplicationController


  def index
    @events = Event.all 
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(post_params)
      redirect_to event_path(@event.id)
    else 
      render "edit"
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  #ajouter le if else
  def create
    event = Event.create(post_params)
    redirect_to event_path(event.id)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private 

  def post_params
    params.require(:event).permit(:name, :description, :place)
  end

end
