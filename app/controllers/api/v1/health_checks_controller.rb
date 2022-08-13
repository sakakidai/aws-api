class Api::V1::HealthChecksController < ApplicationController
  def index
    render plain: 'ok'
  end
end
