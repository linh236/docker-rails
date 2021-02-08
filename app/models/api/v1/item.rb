module Api::V1
  class Item < ApiRecond
    has_many :uses
  end
end
