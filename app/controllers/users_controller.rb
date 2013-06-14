class UsersController < ApplicationController
  before_filter :require_login
  allow_oauth!

  def show
    render json: current_user
  end
end
