module Api::V1
  class ApiRecond < ActiveRecord::Base
    self.abstract_class = true
    scope :getAll_desc,->{order(id: :desc)}
  end
end
