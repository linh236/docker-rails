module Api::V1
  class ApiRecond < ActiveRecord::Base
    self.abstract_class = true
    scope :getAll_desc,->{order(id: :desc)}
    scope :findbyId,->id{find(id)}
  end
end
