class AddTailorIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :tailor_id, :integer
  end
end
