class AddGenderToStyilings < ActiveRecord::Migration[5.2]
  def change
    add_column :styilings, :gender, :string
  end
end
