class Genre < ApplicationRecord
  has_many :movies
  has_many :directors

  validates :name, presence: { message: "Não pode estar vazio" }
end
