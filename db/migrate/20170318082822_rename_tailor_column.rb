class RenameTailorColumn < ActiveRecord::Migration
  def change
	rename_column :tailors, :name, :tailor_name
	rename_column :tailors, :address, :tailor_address
	rename_column :tailors, :contact_num, :tailor_contact
	rename_column :tailors, :username, :tailor_username
	rename_column :tailors, :password, :tailor_password
  end
end
