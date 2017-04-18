class EventsController < ApplicationController
  skip_before_action :authenticate_user!
  def get_events
    event = HTTParty.get('http://api.eventful.com/json/events/search?app_key=Mfh6qpJgwmD7Gb59&where=london&keywords=davidhockney', {
      headers: { 'Accept' => 'application/json'}
      }).parsed_response
      puts event

      render json: event if event
  end
end
