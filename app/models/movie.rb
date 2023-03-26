class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :genre

  has_one_attached :poster

  validates(
    :title, :year, :synopsis, :country, :duration, :director_id, :genre_id,
    presence: { message: "Não pode estar vazio" }
  )
  validates(
    :title,
    uniqueness: { case_sensitive: false, message: "Filme já registrado" }
  )
  validates(
    :year,
    numericality: { only_integer: true, message: "Apenas números inteiros" },
    length: { is: 4, wrong_length: "Ano deve conter %{count} números" }
  )
end
