module Api::V1
    class UsesController < ApisController
      def index
        uses = Item.joins(:uses).select("uses.*,items.name, items.old_cost, items.new_cost, items.unit")
        render json: {data: uses}
      end
    end
end
