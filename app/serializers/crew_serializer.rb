class CrewSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :sas_number, :email_address, :cell_number, :next_of_kin, :nok_cell_num, :shirt_size
end
