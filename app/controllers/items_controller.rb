class ItemsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

#GET /items
def index
    render json: Item.all, include: :user, status: :ok
end

end
