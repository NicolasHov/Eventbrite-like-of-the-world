class EventsController < ApplicationController

  before_action :set_post, only: [:show, :update, :edit, :destroy]

  def index
    @events = Event.all 
  end

  def show
  end

  def new
    @event = Event.new
  end

  def update
    if @event.update(post_params)
      redirect_to event_path(@event.id)
    else 
      render "edit"
    end
  end

  def edit
  end

  #ajouter le if else
  def create
    event = Event.create(post_params)
    redirect_to event_path(event.id)
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  private 

  def post_params
    params.require(:event).permit(:name, :description, :place)
  end

  def set_post 
    @event = Event.find(params[:id])
  end
end
