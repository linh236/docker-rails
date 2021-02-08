class AddUserToUse < ActiveRecord::Migration[5.2]
  def change
    add_reference :uses, :user, foreign_key: true
  end
end
