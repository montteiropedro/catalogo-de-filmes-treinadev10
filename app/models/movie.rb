class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :genre

  has_one_attached :poster

  validates :title, :year, :synopsis, :country, :duration, :director_id, :genre_id, presence: { message: "Não pode estar vazio" }
  validates :year, numericality: { only_integer: true, message: "Apenas números inteiros" }
end
