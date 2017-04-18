class EventsController < ApplicationController
  skip_before_action :authenticate_user!
  def get_events
    p params
    key = ENV["EVENTFUL_API_KEY"]
    event = HTTParty.get("http://api.eventful.com/json/events/search?app_key=#{key}&keywords=#{params[:keyword]}", {
      headers: { 'Accept' => 'application/json'}
      }).parsed_response
      p event

      render json: event if event
  end
end
