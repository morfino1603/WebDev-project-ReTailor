class CreateTailors < ActiveRecord::Migration
  def change
    create_table :tailors do |t|
      t.string :name
      t.text :address
      t.string :contact_num
      t.string :username
      t.string :password

      t.timestamps null: false
    end
  end
end
