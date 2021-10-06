class V1::CalendarsController < ApplicationController
  def index
    json_dates = File.read('public/calendar_database.json')
    render json: json_dates, status: :ok
  end
end
