class AddUserIdReferenceToeventcrews < ActiveRecord::Migration[5.1]
  def change
    add_reference :event_crews, :user, foreign_key: true
  end
end
