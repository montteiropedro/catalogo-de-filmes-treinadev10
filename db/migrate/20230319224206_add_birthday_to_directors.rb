class AddBirthdayToDirectors < ActiveRecord::Migration[7.0]
  def change
    add_column :directors, :birthday, :datetime
  end
end
