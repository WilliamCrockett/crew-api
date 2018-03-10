class CreateEventCrews < ActiveRecord::Migration[5.1]
  def change
    create_table :event_crews do |t|
      t.references :event, foreign_key: true
      t.references :crew, foreign_key: true

      t.timestamps
    end
  end
end
