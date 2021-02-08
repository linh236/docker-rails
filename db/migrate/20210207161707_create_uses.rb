class CreateUses < ActiveRecord::Migration[5.2]
  def change
    create_table :uses do |t|
      t.json :item_id
      t.json :amount
      t.date :date
      t.string :note

      t.timestamps
    end
  end
end
