class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :buyer_name
      t.text :buyer_contact
      t.string :buyer_username
      t.string :buyer_password

      t.timestamps null: false
    end
  end
end
