class AddFavoriteGenreRefToDirectors < ActiveRecord::Migration[7.0]
  def change
    add_reference :directors, :genre, null: false, foreign_key: { to: :favorite_genre }, default: 0
  end
end
