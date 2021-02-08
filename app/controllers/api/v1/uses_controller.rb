module Api::V1
    class UsesController < ApisController
      def index
        render json: {data: Use.getAll}
      end
    end
end
