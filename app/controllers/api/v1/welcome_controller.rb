class Api::V1::WelcomeController < ApplicationController
  def index
    render json: 'Welcome to aws API page!'
  end
end
