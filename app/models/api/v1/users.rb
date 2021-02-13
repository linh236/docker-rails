module Api::V1
  class User < ApiRecond
   scope :getAll,{order(id: :desc)}
  end
end
