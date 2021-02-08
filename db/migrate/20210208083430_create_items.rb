class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.float :old_cost
      t.float :new_cost
      t.string :unit

      t.timestamps
    end
  end
end
