class EventsController < ApplicationController
  def home
  end

  def index
    @events = Event.all 
  end
end
