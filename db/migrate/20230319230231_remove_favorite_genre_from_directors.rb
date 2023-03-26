class RemoveFavoriteGenreFromDirectors < ActiveRecord::Migration[7.0]
  def change
    remove_column :directors, :favorite_genre, :string
  end
end
