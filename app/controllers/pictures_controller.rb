class PicturesController < ApplicationController
  def create
    @event = Event.find(params[:envent_id])
    @event.picture.attach(params[:picture])
    redirect_to(event_path(@event))
  end
end
