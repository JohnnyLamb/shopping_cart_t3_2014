class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image_url
      #Precision is the number of digits of precision, or to the left of the decimal
      #Scale is the number of decimal places, or to the left of the decimal
      t.decimal :price, precision:10, scale:2

      t.timestamps
    end
  end
end
