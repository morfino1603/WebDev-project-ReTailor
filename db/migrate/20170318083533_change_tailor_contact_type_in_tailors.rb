class ChangeTailorContactTypeInTailors < ActiveRecord::Migration
  def change
	change_column :tailors, :tailor_contact, :text
  end
end
