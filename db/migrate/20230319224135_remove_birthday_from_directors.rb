class RemoveBirthdayFromDirectors < ActiveRecord::Migration[7.0]
  def change
    remove_column :directors, :birthday, :string
  end
end
