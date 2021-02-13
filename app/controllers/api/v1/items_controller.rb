module Api::V1
  class ItemsController < ApisController
    def index
      uses = Item.getUseAll
      render json: {data: uses}
    end

    def getUseDate
      date = params[:date]
      id = params[:id]
      render json: {data: Item.getDate(id,date)}
    end
  end
end
