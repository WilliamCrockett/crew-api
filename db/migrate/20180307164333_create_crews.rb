# frozen_string_literal: true

class CreateCrews < ActiveRecord::Migration[5.1]
  def change
    create_table :crews do |t|
      t.text :full_name
      t.text :sas_number
      t.text :email_address
      t.text :cell_number
      t.text :next_of_kin
      t.text :nok_cell_num
      t.text :shirt_size

      t.timestamps
    end
  end
end
