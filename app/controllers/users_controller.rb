class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

#GET /users/:id
def show
    render json: User.find(params[:id]), include: :items, status: :ok
end
end
