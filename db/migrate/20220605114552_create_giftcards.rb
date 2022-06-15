class CreateGiftcards < ActiveRecord::Migration[7.0]
  def change
    create_table :giftcards do |t|
      t.string :first_name
      t.string :last_name
      t.float :gift_card_value
      t.float :commission
      t.string :mob_no
      t.string :address
      t.date :order_date

      t.timestamps
    end
  end
end
