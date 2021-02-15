module Api::V1
  class Item < ApiRecond
    mount_uploader :image, ImageUploader
    has_many :uses
    scope :getUseAll, ->{joins(:uses).select("uses.*,items.name, items.old_cost, items.new_cost, items.unit, items.image")}
    scope :getDate, ->(id,date){joins(:uses).select("uses.*,items.name, items.old_cost, items.new_cost, items.unit,items.image").where("uses.date = ? AND uses.user_id= ?",date,id)}
  end
end
