class AddUserToCrews < ActiveRecord::Migration[5.1]
  def change
    add_reference :crews, :user, foreign_key: true
  end
end
