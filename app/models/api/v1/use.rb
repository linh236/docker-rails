module Api::V1
  class Use < ApiRecond
    scope :getAll,->{reorder(:id)}
  end
end
