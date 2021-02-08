class AddItemToUse < ActiveRecord::Migration[5.2]
  def change
    add_reference :uses, :item, foreign_key: true
  end
end
