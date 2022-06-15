class AddStatusToGiftcards < ActiveRecord::Migration[7.0]
  def change
    add_column :giftcards, :status, :string, default: "out for delivery"
  end
end
