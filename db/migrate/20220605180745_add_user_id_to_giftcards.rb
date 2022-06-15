class AddUserIdToGiftcards < ActiveRecord::Migration[7.0]
  def change
    add_column :giftcards, :user_id, :integer
    add_index :giftcards, :user_id
  end
end
