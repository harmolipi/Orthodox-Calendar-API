class V1::CalendarsController < ApplicationController
  before_action :get_dates
  before_action :parse_dates, only: [:show]

  # GET /v1/calendars
  def index
    render json: @json_dates, status: :ok
  end

  # GET /v1/calendar/params
  def show
    selected_date = @parsed_dates.find { |date| date["month"].to_i == calendar_params[:month].to_i && date["date"].to_i == calendar_params[:date].to_i }
    render json: selected_date
  end

  private

  def calendar_params
    params.permit(:month, :date)
  end

  def get_dates
    @json_dates = File.read('public/calendar_database.json')
  end

  def parse_dates
    @parsed_dates = JSON.parse(@json_dates)
  end
end
