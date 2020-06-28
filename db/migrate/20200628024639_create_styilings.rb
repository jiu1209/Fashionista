class CreateStyilings < ActiveRecord::Migration[5.2]
  def change
    create_table :styilings do |t|
      
      t.integer :user_id
      t.string :styling_image_id
      t.text :detail
      t.string :item_one
      t.string :item_two
      t.string :item_three
      t.string :item_four
      t.string :item_five
      t.string :item_six
      t.string :item_seven
      t.string :item_eight
      t.string :brand_one
      t.string :brand_two
      t.string :brand_three
      t.string :brand_four
      t.string :brand_five
      t.string :brand_six
      t.string :brand_seven
      t.string :brand_eight
      t.timestamps
    end
  end
end