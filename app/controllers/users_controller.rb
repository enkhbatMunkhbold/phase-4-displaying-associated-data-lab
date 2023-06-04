class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    render json: user, except: [:created_at, :updated_at], include: :items
  end
end
