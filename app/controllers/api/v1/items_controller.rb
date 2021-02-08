module Api::V1
  class ItemsController < ApisController
    def index
      render json: {data: Item.getAll_desc}
    end
  end
end
