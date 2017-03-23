class AddBuyerAddressToBuyers < ActiveRecord::Migration
  def change
    add_column :buyers, :buyer_address, :text
  end
end
