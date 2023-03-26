class Director < ApplicationRecord
  has_many :movies
  belongs_to :genre

  validates :name, :nationality, :birthday, :genre_id, presence: { message: "Não pode estar vazio" }
end
