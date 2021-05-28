class AppleController < ApplicationController
  def index
    response = HTTP.get("https://www.alphavantage.co/query?function=TIME_SERIES_DAILY_ADJUSTED&symbol=AAPL&apikey=Rails.application.credentials.alpha_api_key")
    render json: response.parse(:json)
  end
end
